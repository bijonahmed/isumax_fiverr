<template>
    <div>
        <!-- <div class="container-fluid"> -->
            <div class="row">
                <div class="col-md-6">
                    <div class="loginpageImage">
                        <img src="/images/loginseller.png" alt="" class="img-fluid">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-8 me-auto">
                            <div class="login_option_box">
                                <div class="logTitle">
                                    <h2>eKroybd Seller Center</h2>
                                    <p> Login to your seller Account</p>
                                </div>
                                <form @submit.prevent="customerLogin()" id="formrest" class="forms-sample"
                                    enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <div class="input_group">
                                            <input style="--i:0;" type="email" class="input" v-model="login.email">
                                            <i class="fa-solid fa-user"></i>
                                        </div>
                                        <span class="text-danger d-flex" style="font-size: 12px;" v-if="errors.email">{{
                                            errors.email[0]
                                        }}</span>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <div class="input_group">
                                            <input style="--i:1;" :type="inputType" class="input  password-input"
                                                v-model="login.password">
                                            <i style="cursor: pointer;" class="toggle-password fa-regular fa-eye-slash"
                                                :class="iconClass" @click="togglePasswordVisibility"></i>
                                        </div>
                                        <span class="text-danger d-flex" style="font-size: 12px;"
                                            v-if="errors.password">{{
                                                errors.password[0] }}</span>
                                    </div>
                                    <div class="text-end">
                                        <!-- <a href="forget-password.html">Forget Password?</a> -->
                                        <nuxt-link style="font-size: 12px;" to="/forget-password">Forget
                                            Password</nuxt-link>
                                    </div>
                                    <button type="submit" class="btn_login">Login</button>
                                    <div class="social_login d-flex justify-content-center">
                                        <span class="signup_link text-center">Don't Have Account?<button
                                                class="sign_up">SignUp</button></span>
                                        <!-- <div class="">
                                    <h5>Or SignIn with:</h5>
                                </div>
                                <div>
                                    <a href="#facebook"><img src="images/social/icons8-facebook.svg" alt=""></a>
                                    <a href="#google"><img src="images/social/icons8-google.svg" alt=""></a>
                                    <a href="#twitter"><img src="images/social/icons8-twitter.svg" alt=""></a>
                                </div> -->
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- </div> -->
    </div>
</template>

<script>
import $ from 'jquery';

export default {
    head: {
        title: 'Login',
    },
    data() {
        return {
            inputType: 'password',
            inputType2: 'password',
            showPassword: false,
            showPassword2: false,
            insertdata: {
                name: '',
                email: '',
                password: '',
                invite_code: '',
                password_confirmation: '',
            },

            login: {
                email: '',
                password: '',
            },
            notifmsg: '',
            invidecodeError: '',
            errors: {},
            currentView: 'login',
        }
    },
    computed: {
        iconClass() {
            return this.showPassword ? 'fa-eye' : 'fa-eye-slash';
        },
        iconClass2() {
            return this.showPassword2 ? 'fa-eye' : 'fa-eye-slash';
        }
    },
    mounted() {
        this.defaultLoading();
    },

    methods: {
        showLogin() {
            this.currentView = 'login';
        },
        showSignUp() {
            this.currentView = 'signup';
        },
        togglePasswordVisibility() {
            this.showPassword = !this.showPassword;
            this.inputType = this.showPassword ? 'text' : 'password';
        },
        togglePasswordVisibility2() {
            this.showPassword2 = !this.showPassword2;
            this.inputType2 = this.showPassword2 ? 'text' : 'password';
        },
        defaultLoading() {
            const fullUrl = this.$route.fullPath;
            console.log(fullUrl);
            if (fullUrl == '/login') {
                this.currentView = 'login';
            } else if (fullUrl == '/login/signup') {
                this.currentView = 'login';
            }

            this.$nextTick(() => {

                $(".toggle-password").click(function () {
                    $(this).toggleClass("fa-eye-slash fa-eye");
                    let input = $(this).parent().find("input"); // Declare the 'input' variable with 'let'
                    if (input.attr("type") == "password") {
                        input.attr("type", "text");
                    } else {
                        input.attr("type", "password");
                    }
                });
                $(".signIn").on("click", function () {
                    $(".log_sec").css({
                        transform: "translateX(-100%)",
                        "transition-duration": "1s",
                        opacity: "1",
                        filter: "blur(0px)",
                    });
                    $(".log_sec").addClass("inactive");

                    $(".sign_sec").css({
                        transform: "translateX(-100%)",
                        "transition-duration": "1s",
                        opacity: "0",
                        filter: "none",
                    });
                    $(".sign_sec").removeClass("inactive");
                    $(".sign_sec").addClass("active");
                });

                $(".sign_up").on("click", function () {
                    $(".log_sec").css({
                        transform: "translateX(0%)",
                        "transition-duration": "1s",
                        opacity: "0",
                        filter: "blur(3px)",
                    });
                    $(".log_sec").removeClass("inactive");
                    $(".log_sec").addClass("active");

                    $(".sign_sec").css({
                        transform: "translateX(0%)",
                        "transition-duration": "1s",
                        opacity: "1",
                    });
                    $(".sign_sec").addClass("inactive");
                });
            });
        },
        saveData() {
            const formData = new FormData();
            formData.append('name', this.insertdata.name);
            formData.append('email', this.insertdata.email);
            formData.append('password', this.insertdata.password);
            formData.append('invite_code', this.insertdata.invite_code);
            formData.append('password_confirmation', this.insertdata.password_confirmation);
            const headers = {
                'Content-Type': 'multipart/form-data'
            };
            this.$axios.post('/auth/register',
                formData, {
                headers
            }).then((response) => {

                const token = response.data.access_token;
                this.$auth.setUserToken(token);
                const Toast = Swal.mixin({
                    toast: true,
                    position: "top-end",
                    showConfirmButton: false,
                    timer: 3000,
                    timerProgressBar: true,
                    didOpen: (toast) => {
                        toast.onmouseenter = Swal.stopTimer;
                        toast.onmouseleave = Swal.resumeTimer;
                    }
                });
                Toast.fire({
                    icon: "success",
                    title: "Signed in successfully"
                });
                this.$router.push('/');
                /*
                if (process.client) {
                    this.$router.push({
                        path: '/user/user-profile'
                    });
                 }
                */
            }).catch(error => {
                this.invidecodeError = error.response.data.error;
                console.log("code error: " + error.response.data.errors);
                if (error.response.status === 422) {
                    this.errors = error.response.data.errors;
                    // Convert errors object to string
                    const errorString = Object.values(this.errors).join(', ');
                    // Display error string in Toast notification
                    const Toast = Swal.mixin({
                        toast: true,
                        position: "top-end",
                        showConfirmButton: false,
                        timer: 3000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.onmouseenter = Swal.stopTimer;
                            toast.onmouseleave = Swal.resumeTimer;
                        }
                    });
                    Toast.fire({
                        icon: "error",
                        title: errorString
                    });
                }
            });

        },
        async customerLogin() {
            try {

                const postData = {
                    email: this.login.email,
                    password: this.login.password,
                    // Add other parameters as needed
                };
                
                let {
                    data
                } = await this.$axios.post('/auth/login', postData); //await this.login.post('/auth/login');
                // await this.$auth.setUserToken(data.access_token);



                if (data.role_id === 2) {
                    throw new Error("Users cannot log in from here."); // Throw an error
                    // seller/seller-dashboard

                } else {
                    // Proceed with login for other roles
                    await this.$auth.setUserToken(data.access_token);

                    if (data.role_id === 3) {
                        return this.$router.push('/seller/seller-dashboard');
                    } else {
                        console.warn('Unsupported role_id:', data.role_id);
                    }
                }



            } catch (err) {
                console.log(err)
                const Toast = Swal.mixin({
                    toast: true,
                    position: "top-end",
                    showConfirmButton: false,
                    timer: 3000,
                    timerProgressBar: true,
                    didOpen: (toast) => {
                        toast.onmouseenter = Swal.stopTimer;
                        toast.onmouseleave = Swal.resumeTimer;
                    }
                });
                Toast.fire({
                    icon: "error",
                    title: "Creadentials dosen't match"
                });
            }
        },

    },

}
</script>