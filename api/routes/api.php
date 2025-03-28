<?php

use App\Http\Controllers\Admin\AdminController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminAuthController;
use App\Http\Controllers\blogController;
use App\Http\Controllers\Customer\CustomerController;
use App\Http\Controllers\User\UserController;
use App\Http\Controllers\Category\CategoryController;
use App\Http\Controllers\Project\ProjectController;
use App\Http\Controllers\Gig\GigController;
use App\Http\Controllers\Setting\SettingController;
use App\Http\Controllers\UnauthenticatedController;
use App\Http\Controllers\Brands\BrandsController;
use App\Http\Controllers\Product\ProductController;
use App\Http\Controllers\ForgotPasswordController;
use App\Http\Controllers\Order\OrderController;
use App\Http\Controllers\Chat\ChatController;
use App\Http\Controllers\Deposits\DepositController;
use App\Http\Controllers\Deposits\PaypalController;
use App\Http\Controllers\Post\PostController;
use App\Http\Controllers\Payment\PaymentController;
 

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::group(
    [
        'prefix' => 'chat',
    ],
    function () {
        Route::get('/userrowCheck', [ChatController::class, 'userrowCheck']);
        Route::get('/userrowCheckSeller', [ChatController::class, 'userrowCheckSeller']);
        Route::post('messages', [ChatController::class, 'message']);
        Route::post('sendMessages', [ChatController::class, 'sendMessages']);
        Route::post('sendMessagesForSeller', [ChatController::class, 'sendMessagesForSeller']);
        Route::get('sendChatRequest', [ChatController::class, 'sendChatRequest']);
        Route::get('/getMessages', [ChatController::class, 'getMessages']);
        Route::get('/getMessagesSeller', [ChatController::class, 'getMessagesSeller']);
        Route::get('/checkChatHistory', [ChatController::class, 'checkChatHistory']);
        Route::get('/getSelectedMessages', [ChatController::class, 'getSelectedMessages']);
        Route::get('/getChatUsers', [ChatController::class, 'getChatUsers']);
        Route::get('/getChatUsersTo', [ChatController::class, 'getChatUsersTo']);
        Route::get('/byerPendingOrders', [ChatController::class, 'pendingOrdersBuyer']);
        Route::get('/msgCountBuyer', [ChatController::class, 'msgCountBuyer']);
    },
);

Route::group(
    [
        'prefix' => 'post',
    ],
    function () {
        Route::delete('notifidelete/{id}', [PostController::class, 'notifidelete']);
        Route::post('notificaitonsave', [PostController::class, 'notificationsend']);

        Route::post('sellerMessageSend', [PostController::class, 'sellerMessageSend']);
        Route::post('buyerMessageSend', [PostController::class, 'buyerMessageSend']);

        Route::post('save', [PostController::class, 'save']);
        Route::post('userRequestPost', [PostController::class, 'userRequestPost']);
        Route::post('update', [PostController::class, 'update']);
        Route::get('postrow/{id}', [PostController::class, 'postrow']);
        Route::get('allPost', [PostController::class, 'allPostList']);
        Route::get('allNotificationMsg', [PostController::class, 'allNotification']);
        Route::get('allPosts', [PostController::class, 'allPosts']);
        Route::get('postCategoryData', [PostController::class, 'postCategoryData']);
    },
);

Route::group(
    [
        'middleware' => 'api',
        'prefix' => 'auth',
    ],
    function () {
        Route::post('register', [AuthController::class, 'register']);
        Route::post('registerSeller', [AuthController::class, 'registerSeller']);
        Route::post('login', [AuthController::class, 'login']);
        Route::post('logout', [AuthController::class, 'logout']);
        //For Admin Login
        Route::post('adminLogin', [AdminAuthController::class, 'adminLogin']);
        Route::post('admin-logout', [AdminAuthController::class, 'adminLogout']);
        Route::post('/adminVertificationCode', [AdminAuthController::class, 'verifyCode']);
        Route::post('adminMe', [AdminAuthController::class, 'me']);

        //END
        Route::post('refresh', [AuthController::class, 'refresh']);
        Route::post('me', [AuthController::class, 'me']);
        Route::post('profile', [AuthController::class, 'profile']);
        Route::post('updateProfileImages', [AuthController::class, 'updateProfileImages']);
        Route::post('updateprofile', [AuthController::class, 'updateprofile']);
        Route::post('updateprofileFrontend', [AuthController::class, 'updateprofileFrontend']);
        Route::post('updateprofileFrontendSeller', [AuthController::class, 'updateprofileFrontendSeller']);
        Route::post('updatePassword', [AuthController::class, 'changesPassword']);
        Route::get('showProfileData', [AuthController::class, 'showProfileData']);
        Route::post('password/email', [ForgotPasswordController::class, 'forgetPassword']);
        Route::post('password/reset', [ForgotPasswordController::class, 'reset']);
    },
);
Route::group(
    [
        'middleware' => 'api',
        'prefix' => 'customer',
    ],
    function () {
        Route::get('getmlmReport', [CustomerController::class, 'getmlmReport']);
        Route::get('cateCommissionHistReport', [CustomerController::class, 'cateCommissionHistReport']);
        Route::get('getCustomerLevel', [CustomerController::class, 'getCustomerLevel']);
        Route::post('getCustomerAllLevel', [CustomerController::class, 'getCustomerAllLevel']);
        Route::post('getCustomerCalculateLev', [CustomerController::class, 'getCustomerCalculateLev']);
        Route::post('getCustomerCalculateLevAd', [CustomerController::class, 'getCustomerCalculateLevAd']);
        Route::post('saveLead', [CustomerController::class, 'saveLead']);
        Route::post('saveCustomer', [CustomerController::class, 'saveCustomer']);
        Route::get('allCustomers', [CustomerController::class, 'allCustomers']);
        Route::get('allleadList', [CustomerController::class, 'allleadList']);
        Route::get('getCustomerRow/{id}', [CustomerController::class, 'checkCustomer']);
        Route::get('getLeadRow/{id}', [CustomerController::class, 'checkLead']);
    },
);

Route::group(['prefix' => 'gig'], function () {
    Route::get('deleteMultipleImgId', [GigController::class, 'deleteMultipleImgId']);
    Route::post('createGig', [GigController::class, 'createGig']);
    Route::post('updateGig', [GigController::class, 'updateGig']);
    Route::post('adminCheckApproval', [GigController::class, 'adminCheckApproval']);
    Route::get('deleteGig', [GigController::class, 'deleteGig']);
    Route::get('deleteGigAdmin/{id}', [GigController::class, 'deleteGigAdmin']);
    Route::get('deleteWishListGig', [GigController::class, 'deleteWishListGig']);
    Route::get('getGigHistory', [GigController::class, 'getGigHistory']);
    Route::get('getwishListGig', [GigController::class, 'getwishListGig']);
    Route::get('getgitrow', [GigController::class, 'getgitrow']);
    Route::get('getgitrowCheckAdmin', [GigController::class, 'getgitrowCheckAdmin']);
    Route::get('getAllGigForAdmin', [GigController::class, 'getAllGigForAdmin']);
});

Route::group(
    [
        'middleware' => 'api',
        'prefix' => 'user',
    ],
    function () {
        Route::get('allbuyers', [UserController::class, 'allbuyers']);
        Route::get('allsellers', [UserController::class, 'allsellers']);
        Route::get('myheartTouch', [UserController::class, 'myheartTouch']);
        Route::get('getMessagesNoti', [UserController::class, 'getMessagesNotification']);
        Route::get('getSellerAllMessages', [UserController::class, 'getSellerAllMessages']);
        Route::get('getBuyerAllMessages', [UserController::class, 'getSellerAllMessages']);
        Route::get('getMessagesUserWise', [UserController::class, 'getMessagesUserWise']);
        Route::get('getMessagesUserWisebuyer', [UserController::class, 'getMessagesUserWisebuyer']);
        Route::get('getSellerAllMessagesSignle', [UserController::class, 'getSellerAllMessagesSignle']);
        Route::get('getBuyerAllMessagesSignle', [UserController::class, 'getBuyerAllMessagesSignle']);

        Route::post('updateUser', [UserController::class, 'updateUser']);
        Route::get('allrolelist', [UserController::class, 'allrolelist']);
        Route::get('dashboardCounting', [UserController::class, 'dashboardCounting']);
        Route::get('deleteNotification/{id}', [UserController::class, 'deleteNotification']);
        Route::get('getNotifications', [UserController::class, 'getNotifications']);
        Route::get('pendingCountNotification', [UserController::class, 'pendingCountNotification']);
        Route::post('sendNotification', [UserController::class, 'sendNotification']);
        Route::get('findUserDetails', [UserController::class, 'findUserDetails']);
        Route::get('allUsers', [UserController::class, 'AllUsersList']);
        Route::get('checkmlmHistorys', [UserController::class, 'checkmlmHistorys']);
        Route::get('checkLevelHistorys', [UserController::class, 'checkLevelHistorys']);
        Route::get('checkLevelHistorysAdmin', [UserController::class, 'checkLevelHistorysAdmin']);

        Route::get('getmlmlists', [UserController::class, 'getmlmlists']);
        Route::get('checkBalance', [UserController::class, 'checkBalance']);
        Route::get('getDeposit', [UserController::class, 'getDeposit']);
        Route::post('saveDeposit', [UserController::class, 'saveDeposit']);
        Route::post('getWaypaymentConfirm', [UserController::class, 'getWaypaymentConfirm']);

        Route::post('add-certificate', [UserController::class, 'addcertificate']);
        Route::post('add-experience', [UserController::class, 'addExperience']);
        Route::post('add-education', [UserController::class, 'addeducation']);
        Route::get('removeSkill', [UserController::class, 'removeSkill']);
        Route::get('geteducation', [UserController::class, 'geteducation']);
        Route::get('getExperience', [UserController::class, 'getExperience']);
        Route::get('getCertificate', [UserController::class, 'getCertificate']);
        Route::get('delete-education/{id}', [UserController::class, 'deleteEducation']);
        Route::get('delete-experience/{id}', [UserController::class, 'deleteExperience']);
        Route::get('delete-certificate/{id}', [UserController::class, 'deleteCertificate']);
        Route::get('skillsData', [UserController::class, 'skillsData']);
        Route::post('addskills', [UserController::class, 'addskills']);
        Route::get('allUsers', [UserController::class, 'AllUsersList']);
        Route::get('allprofession', [UserController::class, 'allProfessionList']);
        Route::get('allemployeeType', [UserController::class, 'allemployeeType']);
        Route::get('employeeRow/{id}', [UserController::class, 'employeeRow']);
        Route::get('getEmployeeList', [UserController::class, 'getEmployeeList']);
        Route::post('saveEmployee', [UserController::class, 'saveEmployee']);
        Route::get('getDesignationList', [UserController::class, 'getDesignationList']);
        Route::post('saveDesignation', [UserController::class, 'saveDesignation']);
        Route::get('departmentCheck/{id}', [UserController::class, 'departmentCheck']);
        Route::get('designationCheck/{id}', [UserController::class, 'designationCheck']);
        Route::get('getDepartmentList', [UserController::class, 'getDepartmentList']);
        // Route::get('typeofdoucments', [UserController::class, 'typeofdoucments']);
        Route::post('saveDepartment', [UserController::class, 'saveDepartment']);
        Route::post('changePassword', [UserController::class, 'changePassword']);
        Route::post('saveUser', [UserController::class, 'saveUser']);
        Route::post('assignToUser', [UserController::class, 'assignToUser']);
        Route::post('saveRole', [UserController::class, 'saveRole']);
        Route::get('getRoleList', [UserController::class, 'getRoleList']);
        Route::get('roleCheck/{id}', [UserController::class, 'roleCheck']);
        Route::get('getUserRow/{id}', [UserController::class, 'editUserId']);
        Route::get('getCountry', [UserController::class, 'getCountry']);
        Route::get('getTime', [UserController::class, 'getTime']);
        Route::get('cardlist/{id}', [UserController::class, 'getCard']);
        Route::get('blogs', [UserController::class, 'getblogs']);
        Route::post('addCryptoWalletAddress', [UserController::class, 'addCryptoWalletAddress']);
        Route::post('addCryptoWalletAddressPaypal', [UserController::class, 'addCryptoWalletAddressPaypal']);
        Route::post('addCryptoWalletAddressPayooner', [UserController::class, 'addCryptoWalletAddressPayooner']);
        Route::post('addCryptoWalletAddressBank', [UserController::class, 'addCryptoWalletAddressBank']);
        Route::get('getwithdrawalMethod', [UserController::class, 'getwithdrawalMethod']);
        Route::post('addwithdrawal', [UserController::class, 'addwithdrawal']);
        Route::post('/notifications/{id}/seen', [UserController::class, 'markAsSeen']);
    },
);

Route::group(
    [
        'prefix' => 'deposit',
    ],
    function () {
        
        Route::get('getUserDepositList', [DepositController::class, 'getUserDepositList']);
        Route::get('getUserUsdtDepositList', [DepositController::class, 'getUserUsdtDepositList']);
        Route::post('saveWithdrawalSeller', [UserController::class, 'saveWithdrawalSeller']);
        Route::post('sendRequesUsdtPayment', [DepositController::class, 'sendRequesUsdtPayment']);
        Route::post('sendRequesPaypalPayment', [DepositController::class, 'sendRequesPaypalPayment']);

        Route::post('saveWithdrawal', [UserController::class, 'saveWithdrawal']);
        Route::post('addwithdrawal', [DepositController::class, 'getWithdrwalfetchdata']);
        Route::get('getWithdrwalfetchdata', [DepositController::class, 'getWithdrwalfetchdata']);
        Route::get('getSendReceived', [DepositController::class, 'getSendReceived']);
        Route::get('getWithMethodList', [DepositController::class, 'getWithMethodList']);
        Route::get('getWithdrawRequest', [DepositController::class, 'getWithdrawRequest']);
        Route::post('depositRequest', [DepositController::class, 'depositRequest']);
        Route::post('withdrawRequest', [DepositController::class, 'withdrawRequest']);
        Route::post('sendReciverBuySell', [DepositController::class, 'sendReciverBuySell']);
        Route::get('filterRechargeList', [DepositController::class, 'filterRechargeList']);
        Route::get('depositrow/{id}', [DepositController::class, 'depositrow']);
        Route::get('withdrawrow/{id}', [DepositController::class, 'withdrawrow']);
        Route::get('getWithMethodRow/', [DepositController::class, 'getWithMethodRow']);
        Route::get('deposit-list', [DepositController::class, 'getDepositList']);
        Route::get('withdrawal-list', [DepositController::class, 'getwithdrawalList']);
        Route::get('getwithdrawList', [DepositController::class, 'getwithdrawList']);
        Route::post('updateDepositRequest', [DepositController::class, 'updateDepositRequest']);
        Route::post('updateWithDrawRequest', [DepositController::class, 'updateWithDrawRequest']);
        Route::post('addWithDrawMethod', [DepositController::class, 'addWithDrawMethod']);
        //api 
        Route::post('/create-payment-intent', [PaymentController::class, 'createPaymentIntent']);
        Route::post('/create-payment-paypal', [PaypalController::class, 'createPaymentPaypal']);
    },
);

Route::group(
    [
        'middleware' => 'api',
        'prefix' => 'product',
    ],
    function () {
        Route::get('dashboardCounting', [ProductController::class, 'dashboardCounting']);
    },
);

Route::group(
    [
        // 'middleware' => 'api',
        'prefix' => 'category',
    ],
    function () {
        Route::post('save', [CategoryController::class, 'save']);
        Route::post('categoryProSlidersave', [CategoryController::class, 'categoryProSlidersave']);
        Route::post('saveAttribute', [CategoryController::class, 'saveAttribute']);
        Route::post('saveAttributeVal', [CategoryController::class, 'saveAttributeVal']);
        Route::get('getCategoryList', [CategoryController::class, 'allCategory']);
        Route::get('allCategoryforAdmin', [CategoryController::class, 'allCategoryforAdmin']);

        Route::get('getSpeacialCategoryList', [CategoryController::class, 'getSpeacialCategoryList']);
        Route::post('edit', [CategoryController::class, 'edit']);
        Route::get('getInacCategoryList', [CategoryController::class, 'allInacCategory']);
        Route::get('getProductCategoryList', [CategoryController::class, 'getProductCategoryList']);
        Route::get('removeProctCategory', [CategoryController::class, 'removeProctCategory']);
        Route::get('categoryRow/{id}', [CategoryController::class, 'findCategoryRow']);
        Route::get('getCategoryListParent', [CategoryController::class, 'getCategoryListParent']);
        Route::get('getSubCategoryChild/{id}', [CategoryController::class, 'getSubCategoryChild']);
        Route::get('attributeRow/{id}', [CategoryController::class, 'attributeRow']);
        Route::get('attributeValRow/{id}', [CategoryController::class, 'attributeValRow']);
        Route::get('attributeValRows/{attributes_id}', [ProductController::class, 'attributeValRows']);
        Route::get('search', [CategoryController::class, 'searchCategory']);
        Route::get('attributes', [CategoryController::class, 'getAttribute']);
        Route::get('attributes-list', [CategoryController::class, 'getAttributeList']);
        Route::get('attributes-val-list', [CategoryController::class, 'getAttributeValList']);
        Route::post('speacialCatSave', [CategoryController::class, 'speacialCatSave']);
        Route::get('postCategorysearch', [CategoryController::class, 'postCategorysearch']);
    },
);

Route::group(
    [
        //'middleware' => 'api',
        'prefix' => 'brands',
    ],
    function () {
        Route::post('save', [BrandsController::class, 'save']);
        Route::post('update', [BrandsController::class, 'update']);
        Route::get('allbrandlist', [BrandsController::class, 'allbrandlist']);
        Route::get('brandrow/{id}', [BrandsController::class, 'brandrow']);
        // Route::get('searchmodels', [BrandsController::class, 'searchmodels']);
    },
);

Route::group(
    [
        'middleware' => 'api',
        'prefix' => 'project',
    ],
    function () {
        Route::post('saveTask', [ProjectController::class, 'saveTask']);
        Route::post('saveProject', [ProjectController::class, 'save']);
        Route::get('allProject', [ProjectController::class, 'allProject']);
        Route::get('geTaskList', [ProjectController::class, 'geTaskList']);
        Route::get('checkProjectId/{id}', [ProjectController::class, 'editId']);
        Route::get('taskRow/{id}', [ProjectController::class, 'editTaskId']);
    },
);

Route::group(
    [
        'prefix' => 'order',
    ],
    function () {
        Route::get('referralCommission', [OrderController::class, 'referralCommission']);
        Route::get('updateStatus', [OrderController::class, 'updateStatus']);
        Route::get('cancel-order-buyer', [OrderController::class, 'cancelOrderBuyer']);
        Route::get('updateReview', [OrderController::class, 'updateReviews']);
        Route::get('updateReviewSeller', [OrderController::class, 'updateReviewSeller']);
        Route::get('cancel-order-buyer/{orderId}', [OrderController::class, 'cancelOrderBuyer']);
        Route::post('updateDeliveryGig', [OrderController::class, 'updateDeliveryGig']);
        Route::get('checkOrder', [OrderController::class, 'checkOrder']);
        Route::get('getOrderCounting', [OrderController::class, 'getOrderCounting']);
        Route::get('getOrderCountBuyer', [OrderController::class, 'getOrderCountBuyer']);
        Route::get('aceptOder', [OrderController::class, 'aceptOder']);
        Route::get('rejectOrder', [OrderController::class, 'rejectOrder']);
        Route::post('updateOrder', [OrderController::class, 'updateOrder']);
        Route::post('confirmOrder', [OrderController::class, 'submitOrder']);
        Route::get('getOrder', [OrderController::class, 'getOrder']);
        Route::get('getOrderForSeller', [OrderController::class, 'getOrderForSeller']);
        Route::get('getOrderPlaceForSeller', [OrderController::class, 'getOrderPlaceForSeller']);
        Route::get('getOrderPlaceForByer', [OrderController::class, 'getOrderPlaceForByer']);
        Route::get('getOrderForSellerEarning', [OrderController::class, 'getOrderForSellerEarning']);
        Route::get('getOrderPlace', [OrderController::class, 'getOrderPlace']);
        Route::get('allOrders', [OrderController::class, 'allOrders']);
        Route::get('allOrdersFilter', [OrderController::class, 'allOrdersFilter']);
    },
);

Route::group(['prefix' => 'unauthenticate'], function () {

    //strip
    //Route::get('/stripe/payment-intent/{id}', [PaymentIntentController::class, 'retrievePaymentIntent']);
    Route::get('allCategory', [UnauthenticatedController::class, 'allCategoryActiveStatus']);
    Route::get('filterallCategory', [UnauthenticatedController::class, 'filterallCategory']);
    Route::get('allActiveCategory', [UnauthenticatedController::class, 'allActiveCategory']);
    Route::get('checkContent', [UnauthenticatedController::class, 'checkContent']);
    Route::get('checkGetList', [UnauthenticatedController::class, 'checkGetList']);
    Route::get('getPublic', [UnauthenticatedController::class, 'getPublic']);

    Route::get('getExperience', [UnauthenticatedController::class, 'getExperience']);
    Route::get('geteducation', [UnauthenticatedController::class, 'geteducation']);
    Route::get('skillsData', [UnauthenticatedController::class, 'skillsData']);
    Route::get('getCertificate', [UnauthenticatedController::class, 'getCertificate']);
    Route::get('getFindCategorys', [UnauthenticatedController::class, 'getFindCategorys']);
    Route::get('getSubCategoryList', [UnauthenticatedController::class, 'getSubCategoryList']);
    Route::get('getCategoryList', [UnauthenticatedController::class, 'allCategorys']);
    Route::get('filterCategoryesSlug', [UnauthenticatedController::class, 'filterCategoryesSlug']);
    Route::get('findCategorys', [UnauthenticatedController::class, 'findCategorys']);
    Route::get('findgig', [UnauthenticatedController::class, 'findgig']);
    Route::get('userSearch/{slug}', [UnauthenticatedController::class, 'userSearch']);
    Route::get('getAllcountrys', [UnauthenticatedController::class, 'getCountry']);
    Route::get('getSettingData', [UnauthenticatedController::class, 'getSettingData']);
});

Route::group(
    [
        'middleware' => 'api',
        'prefix' => 'setting',
    ],
    function () {
        // sliders
        Route::get('getallActiveBank', [SettingController::class, 'getallActiveBank']);
        Route::post('addBank', [SettingController::class, 'addBank']);
        Route::post('addBranch', [SettingController::class, 'addBranch']);
        Route::get('editbank/{id}', [SettingController::class, 'editbank']);
        Route::get('editBranch/{id}', [SettingController::class, 'editBranch']);
        Route::get('getBranchListAdmin', [SettingController::class, 'getBranchListAdmin']);
        Route::get('getBankListAdmin', [SettingController::class, 'getBankListsAdmin']);
        Route::get('getBankList', [SettingController::class, 'getBankLists']);
        Route::get('checkBankWiseBranch', [SettingController::class, 'checkBankWiseBranch']);
        Route::post('addslidersImages', [SettingController::class, 'saveslidersImages']);
        Route::post('deleteSlider', [SettingController::class, 'deleteSliderimage']);
        Route::post('upateSetting', [SettingController::class, 'upateSetting']);
        Route::post('companyProfile', [SettingController::class, 'updateCompanyProfile']);
        Route::get('getCompanyData', [SettingController::class, 'getProfileData']);
        Route::get('getcoupons', [SettingController::class, 'getcoupos']);
        Route::get('settingrowSystem', [SettingController::class, 'settingrowSystem']);
    },
);

Route::group(
    [
        'middleware' => 'api',
        'prefix' => 'blog',
    ],
    function () {
        //blog-details
        Route::post('newblogcat', [blogController::class, 'newblogcat']);
        Route::get('blogcatlist', [blogController::class, 'blogcatlist']);
        Route::get('adminblogcatlist', [blogController::class, 'adminblogcatlist']);
        Route::get('blogCatdetails/{slug}', [blogController::class, 'blogCatdetails']);
        Route::post('updateBlogCat', [blogController::class, 'updateBlogCat']);

        //updateBlog
        Route::post('add-newblog', [blogController::class, 'addblog']);
        Route::get('bloglist', [blogController::class, 'bloglist']);
        Route::get('blog-details/{slug}', [blogController::class, 'blogDetails']);
        Route::post('updateBlog', [blogController::class, 'updateBlog']);
    },
);
