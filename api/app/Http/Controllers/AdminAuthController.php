<?php

namespace App\Http\Controllers;

use DB;
use Validator;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Country;
use App\Models\Profession;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Mail\VerificationCodeMail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Validation\ValidationException; // Import the ValidationException class

class AdminAuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['verifyCode', 'adminLogin', 'login', 'register']]);
    }

    protected function validateLogin(Request $request)
    {
        $request->validate([
            'email'        => 'required|string',
            'password'     => 'required|string',
            'captchaInput' => 'required',
            'userCapInput' => 'required',
        ]);

        // Validate CAPTCHA
        if (strtolower($request->input('captchaInput')) !== strtolower($request->input('userCapInput'))) {
            throw ValidationException::withMessages([
                'userCapInput' => ['The CAPTCHA code is incorrect.'],
            ]);
        }
    }

    public function adminLogin(Request $request)
    {
        // dd($request->all());

        // Validate incoming request data
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        // Retrieve credentials
        $credentials = $request->only('email', 'password');

        // Attempt to authenticate the user
        if (!$token = auth('api')->attempt($credentials)) {
            return response()->json([
                'errors' => [
                    'account' => [
                        "Invalid username or password"
                    ]
                ]
            ], 422);
        }

        // If authentication is successful, return the token
        return $this->respondWithToken($token);
    }

    protected function respondWithToken($token)
    {
        //dd($token);
        // Get the authenticated user
        $user = auth('api')->user();
        //dd($user);
        // Check if the user's status requires verification


        $verificationCode = rand(10000, 99999); // Generate a random 5-digit verification code
        $expiryTime = now()->addMinutes(5); // Set expiry time to 5 minutes from now

        // Save the verification code and expiry time to the user record
        $user->verification_code            = $verificationCode;
        $user->verification_code_expires_at = $expiryTime;
        $user->verification_status          = 0;
        $user->save();

        // Send the verification code via email
        if (is_null($user->email)) {
            return response()->json(['error' => 'Email address not found.'], 400);
        }


        /*
            Mail::to($user->email)->queue(new VerificationCodeMail($verificationCode));
            $to = $user->email;
            $subject = "Your Verification Code";
            $verificationCode = $user->verification_code;
            
            $message = "
            <html>
            <head>
              <title>Your Verification Code</title>
            </head>
            <body>
              <p>Dear User,</p>
              <p>Your verification code is:</p>
              <h2 style='color: #007bff;'>$verificationCode</h2>
              <p>This code will expire in 5 minutes.</p>
              <p>If you did not request this, please ignore the email.</p>
              <br>
              <p>Regards,<br>Isumax.com Team</p>
            </body>
            </html>
            ";
            
            $headers  = "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
            $headers .= "From: Isumax.com <noreply@isumax.com>" . "\r\n";
            
            mail($to, $subject, $message, $headers);
            */
        // try {
        //     Mail::raw("Your verification code is: $verificationCode", function ($message) use ($user) {
        //         $message->to($user->email)->subject('Verification Code');
        //     });
        //     return response()->json([
        //         'message' => 'Verification code sent successfully to your email.',
        //         'requires_verification' => true // Indicate that verification is needed
        //     ], 200);
        // } catch (\Exception $e) {
        //     return response()->json(['error' => 'Failed to send email: ' . $e->getMessage()], 500);
        // }

        //  $user = auth('api')->user(); // Retrieve the authenticated user
        return response()->json([
            'access_token'  => $token,
            'token_type'    => 'bearer',
            'expires_in'    => auth('api')->factory()->getTTL() * 60,
            'user' => [
                'id'        => $user->id,
                'role_id'   => $user->role_id,
                //'verification_status'   => $user->verification_status,
                'name'      => $user->name,
                'email'     => $user->email,
                'status'    => $user->status,
                // Add any other user information you want to include
            ],
        ]);

        return response()->json([
            'errors' => [
                'account' => [
                    "Invalid username or password"
                ]
            ]
        ], 422);
    }




    public function verifyCode(Request $request)
    {

        $request->validate([
            'verificationCode' => 'required',
        ]);
        $verificationCode = $request->verificationCode;

        $user = auth('api')->user();
        $verificationCode = (int) $request->verificationCode; // Cast to integer

        if ($user && $user->verification_code == $verificationCode) {
            $user->verification_code = "";
            $user->verification_code_expires_at = "";
            $user->verification_status = 1; // Set verification status to verified
            $user->save();
            // Return a token for login
            return $this->respondtoken(auth('api')->login($user));
        } else {
            return response()->json(['error_message' => 'Invalid Code.'], 422);
        }
    }


    protected function respondtoken($token)
    {
        $user = auth('api')->user(); // Retrieve the authenticated user
        return response()->json([
            'access_token'  => $token,
            'token_type'    => 'bearer',
            'expires_in'    => auth('api')->factory()->getTTL() * 60,
            'user' => [
                'id'        => $user->id,
                'role_id'   => $user->role_id,
                'verification_status'   => $user->verification_status,
                'name'      => $user->name,
                'email'     => $user->email,
                'status'    => $user->status,
                // Add any other user information you want to include
            ],
        ]);
    }

    public function me()
    {
        //return response()->json($this->guard('api')->user());
        $user = $this->guard('api')->user();

        $response = [
            'message' => 'User successfully retrieved',
        ];

        if (!empty($user)) {
            // Fetch all columns dynamically from the user object
            $userColumns = $user->getAttributes();

            // Loop through each column and add it to the response
            foreach ($userColumns as $column => $value) {
                $response[$column] = $value;
            }

            $countryid     = !empty($user) ? $user->country_1 : "";
            $proId         = !empty($user) ? $user->profession_name : "";
            $chkCountry    = Country::where('id', $countryid)->first();
            $chkProfession = Profession::where('id', $proId)->first();
            $response['profileLogo']  = !empty($user->image) ? url($user->image) : ""; //url(!empty($user->image) ? $user->image : '');
            $response['businessLogo'] = url(!empty($user->business_logo) ? $user->business_logo : '/businessLogo');
            $response['joindate']     = date("Y-M-d", strtotime($user->created_at));
            $response['countryName']  = !empty($chkCountry) ? $chkCountry->countryname : "";
            $response['profName']     = !empty($chkProfession) ? $chkProfession->name : "";
            $response['invite_code']  = !empty($user) ? $user->invite_code : "";
            $response['github']       = !empty($user->github) ? $user->github : "";
            $response['user_id']      = !empty($user->id) ? $user->id : "";
            $response['profession_name']  = !empty($user) ? $user->profession_name : "";
            $response['verification_status']  = !empty($user) ? $user->verification_status : "";
            if (isset($user->twitter) && $user->twitter !== null) {
                $response['twitter'] = !empty($user->twitter) ? $user->twitter : "";
            } else {
                $response['twitter'] = ""; // Assign an empty string if it is null or doesn't exist
            }

            $response['introduce_yourself'] = !empty($user) ? strip_tags($user->introduce_yourself) : "";
            // dd($response['githubs']);
        }

        return response()->json($response);
    }
    public function adminLogout()
    {
        auth()->guard('api')->logout();
        return response()->json(['message' => 'Successfully logged out']);
    }
    public function refresh()
    {
        return $this->respondWithToken($this->guard('api')->refresh());
    }

    public function guard()
    {
        return Auth::guard();
    }
}
