<template>
    <div>
        <LogoAndPayment />
        <!-- navbar section start here  -->
        <NavbarSecond />
        <!-- Main section start here  -->

        <section class="main_content ">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <userSidebar />
                    </div>
                    <div class="col-md-9 ps-md-0 col-12">
                        <div class="loading-indicator" v-if="loading">
                            <div class="loader-container">
                                <center class="loader-text">Loading...</center>
                                <img src="/loader/loader.gif" alt="Loader" />
                            </div>
                        </div>

                        <div class="main_profile">
                            <h5 class="mb-3">Withdrawal</h5>
                            <div class="row">
                                <div class="col-md-12">
                                    <!-- <h4>By Fait</h4> -->
                                    <div class="card_list">
                                        <!-- <div class="card_blank add card modal open">
                                            <h6>Add account information</h6>
                                            <i class="fa-solid fa-plus"></i>
                                            <p>No account info added yet.</p>
                                        </div> -->
                                        <div class="card_blank addac">
                                            <h6>add account information</h6>
                                            <i class="fa-solid fa-plus"></i>
                                            <p>No account info added yet.</p>
                                        </div>
                                        <div class="card_blank fiat_mdal_open">
                                            <h6>Fiat account information</h6>
                                            <i class="fa-solid fa-plus"></i>
                                            <p>No fiat account info added yet.</p>
                                        </div>
                                        <div class="card_blank crypto_mdal_open">
                                            <h6>Crypto account information</h6>
                                            <i class="fa-solid fa-plus"></i>
                                            <p>No Crypto account info added yet.</p>
                                        </div>
                                    </div>
                                    <div class="card_list">
                                        <div class="fiat_card">
                                            <img src="/images/card.jpg" alt="" class="img-fluid">
                                            <div class="txt_card">
                                                <h6>4654644465</h6>
                                                <div class="name_edit">
                                                    <p>Holder Name</p>
                                                    <button class="btn_edit edit_modal_fait_open">
                                                        <i class="fa-solid fa-pen"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="fiat_card">
                                            <img src="/images/trc20.jpg" alt="" class="img-fluid">
                                            <div class="txt_card">
                                                <h6>T****eC5ab10950e6c181e..</h6>
                                                <div class="name_edit">
                                                    <p>TRC20</p>
                                                    <button class="btn_edit edit_modal_crypto_open">
                                                        <i class="fa-solid fa-pen"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <h5>Select Withdrawal Method</h5>
                                <div class="col-md-12">
                                    <div class="col-md-12 ">
                                        <ul class="nav tbBtns nav-pills mb-3" id="pills-tab" role="tablist">
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link active" id="pills-home-tab"
                                                    data-bs-toggle="pill" data-bs-target="#pills-home" type="button"
                                                    role="tab" aria-controls="pills-home" aria-selected="true">By
                                                    Fiat</button>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                                                    data-bs-target="#pills-profile" type="button" role="tab"
                                                    aria-controls="pills-profile" aria-selected="false">By
                                                    Crypto</button>
                                            </li>
                                        </ul>
                                        <div class="tab-content" id="pills-tabContent">
                                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                                aria-labelledby="pills-home-tab" tabindex="0">
                                                <!-- first tab  -->
                                                <form action="" method="post">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="form_group mb-3">
                                                                <label for="area">Amount</label>
                                                                <input type="text" value="10" autocomplete="off"
                                                                    placeholder="00" name="area" id="area"
                                                                    class="form-control onlyNumber rounded-0">
                                                                <p class="errmsg" style="font-size: 12px; color: red;">
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form_group mb-3">
                                                                <label for="area">Withdrawal Password</label>
                                                                <div class="inp_group">
                                                                    <input type="password" autocomplete="off"
                                                                        name="area" id="wpass"
                                                                        class="form-control onlyNumber6 rounded-0"
                                                                        placeholder="*******">
                                                                    <i toggle="#wpass"
                                                                        class="fa-solid toggle_password  fa-eye"></i>
                                                                </div>
                                                                <p style="font-size: 12px; color: red;" class="errmsgn">
                                                                    Password must be
                                                                    6 digits.
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form_group">
                                                        <input type="button" class="btn_confirm s_mdal_open"
                                                            value="Submit">
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="tab-pane fade" id="pills-profile" role="tabpanel"
                                                aria-labelledby="pills-profile-tab" tabindex="0">
                                                <!-- Second tab  -->
                                                <form action="" method="post">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="form_group mb-3">
                                                                <label for="area">Amount</label>
                                                                <input type="text" autocomplete="off" placeholder="00"
                                                                    name="area" id="area"
                                                                    class="form-control onlyNumber rounded-0">
                                                                <p class="errmsg" style="font-size: 12px; color: red;">
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form_group mb-3">
                                                                <label for="area">Withdrawal Password</label>
                                                                <div class="inp_group">
                                                                    <input type="password" autocomplete="off"
                                                                        name="area" id="pass"
                                                                        class="form-control onlyNumber6 rounded-0"
                                                                        placeholder="*******">
                                                                    <i toggle="#pass"
                                                                        class="fa-solid toggle_password  fa-eye"></i>
                                                                </div>
                                                                <p style="font-size: 12px; color: red;" class="errmsgn">
                                                                    Password must be
                                                                    6 digits.
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form_group">
                                                        <input type="button" class="btn_confirm s_mdal_open"
                                                            value="Submit">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- END Main Section here -->
        <!-- back to top button  -->
        <div class="back_top">
            <a href="#top"><i class="fa-solid fa-angle-up"></i></a>
        </div>
        <Footer />
        <!-- submit modal  -->
        <div class="mdal_ submitMdal">
            <div class="mdal_content">
                <div class="mdal_head">
                    <div class="w-50"></div>
                    <button class="bt_close close_bt"><i class="fa-solid fa-x"></i></button>
                </div>
                <div class="mdal_body">
                    <div class="mdalBdy_content">
                        <i class="fa-solid fa-check"></i>
                        <p>Withdrawal Request Successfully send.</p>
                        <button class=" btn w-100 mt-2 close_bt btn-success" type="button">Continue</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- submit modal end here  -->

        <!-- add account mdal   -->
        <div class="mdal_ addwithdraw">
            <div class="mdal_content">
                <div class="mdal_head">
                    <h5>Add Withdrawal account</h5>
                    <button class="bt_close"><i class="fa-solid fa-x"></i></button>
                </div>
                <div class="mdal_body py-3">
                    <nav class="tabsBtns">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home"
                                aria-selected="true">Fiat</button>

                            <button class="nav-link" id="nav-Paypal-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-Paypal" type="button" role="tab" aria-controls="nav-Paypal"
                                aria-selected="false">Paypal</button>

                            <button class="nav-link" id="nav-Perfect-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-Perfect" type="button" role="tab" aria-controls="nav-Perfect"
                                aria-selected="false">Perfect money</button>

                            <button class="nav-link" id="nav-Skrill-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-Skrill" type="button" role="tab" aria-controls="nav-Skrill"
                                aria-selected="false">Skrill money</button>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <!-- add fiat  -->
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                            aria-labelledby="nav-home-tab" tabindex="0">
                            <form action="">
                                <div class="form_group mb-2">
                                    <label for="">Bank Name <span style="font-size: 12;color: red;">*</span></label>
                                    <select name="" class="form-control" id="">
                                        <option value="">Bank Aisa</option>
                                    </select>
                                </div>
                                <div class="form_group mb-2">
                                    <label for="">Branch Name <span style="font-size: 12;color: red;">*</span></label>
                                    <select name="" class="form-control" id="">
                                        <option value="">Dhaka</option>
                                    </select>
                                </div>
                                <div class="form_group mb-2">
                                    <label for="">Account Holder's name <span
                                            style="font-size: 12;color: red;">*</span></label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form_group mb-2">
                                    <label for="">IBAN number(optional)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form_group mb-2">
                                    <label for="">Account Number <span
                                            style="font-size: 12;color: red;">*</span></label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form_group mb-2">
                                    <label for="">SWIFT code(Optional)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <button class="btn_confirm w-100 ">Submit</button>
                            </form>

                        </div>
                        <!-- add paypal  -->
                        <div class="tab-pane fade" id="nav-Paypal" role="tabpanel" aria-labelledby="nav-Paypal-tab"
                            tabindex="0">
                            <form action="">
                                <div class="form_group mb-2">
                                    <label for="">Email address <span
                                            style="font-size: 12;color: red;">*</span></label>
                                    <input type="text" class="form-control">
                                </div>
                                <button class="btn_confirm w-100 ">Submit</button>
                            </form>
                        </div>
                        <!-- add perfect money  -->
                        <div class="tab-pane fade" id="nav-Perfect" role="tabpanel" aria-labelledby="nav-Perfect-tab"
                            tabindex="0">                            
                            <form action="">
                                <div class="form_group mb-2">
                                    <label for="">Email address <span
                                            style="font-size: 12;color: red;">*</span></label>
                                    <input type="text" class="form-control">
                                </div>
                                <button class="btn_confirm w-100 ">Submit</button>
                            </form>
                        </div>
                        <!-- add Skrill money  -->
                        <div class="tab-pane fade" id="nav-Skrill" role="tabpanel" aria-labelledby="nav-Skrill-tab"
                            tabindex="0">                            
                            <form action="">
                                <div class="form_group mb-2">
                                    <label for="">Email address <span
                                            style="font-size: 12;color: red;">*</span></label>
                                    <input type="text" class="form-control">
                                </div>
                                <button class="btn_confirm w-100 ">Submit</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <!-- add fiat mdal   -->
        <div class="mdal_ fiat_mdal">
            <div class="mdal_content">
                <div class="mdal_head">
                    <!-- <div class="w-50"></div> -->
                    <h5>Add Fiat Account Info</h5>
                    <button class="bt_close"><i class="fa-solid fa-x"></i></button>
                </div>
                <div class="mdal_body">

                </div>
            </div>
        </div>
        <!-- crypto mdal  -->
        <div class="mdal_ crypto_mdal">
            <div class="mdal_content">
                <div class="mdal_head">
                    <!-- <div class="w-50"></div> -->
                    <h5>Add Crypto Account</h5>
                    <button class="bt_close"><i class="fa-solid fa-x"></i></button>
                </div>
                <div class="mdal_body">
                    <div class="form_group mb-2">
                        <label for="">Chennel name<span style="font-size: 12;color: red;">*</span></label>
                        <select name="" class="form-control" id="">
                            <option value="">TRC20</option>
                        </select>
                    </div>
                    <div class="form_group mb-2">
                        <label for="">Address <span style="font-size: 12;color: red;">*</span></label>
                        <div class="inp_group">
                            <input type="text" class="form-control">
                            <button type="button" class="btn_edit"><span class="fa-regular fa-paste"></span></button>
                        </div>
                    </div>
                    <button class="btn_confirm w-100 ">Submit</button>
                </div>
            </div>
        </div>
        <!-- edit fiat mdal   -->
        <div class="mdal_ edit_modal_fait">
            <div class="mdal_content s-modal">
                <div class="mdal_head">
                    <!-- <div class="w-50"></div> -->
                    <h5>Edit Fiat Account Info</h5>
                    <button class="bt_close"><i class="fa-solid fa-x"></i></button>
                </div>
                <div class="mdal_body">
                    <form action="">
                        <div class="form_group mb-2">
                            <label for="">Bank Name <span style="font-size: 12;color: red;">*</span></label>
                            <select name="" class="form-control" id="">
                                <option value="" selected>Bank Aisa</option>
                                <option value="">DBBL</option>
                                <option value="">City Bank</option>
                            </select>
                        </div>
                        <div class="form_group mb-2">
                            <label for="">Branch Name <span style="font-size: 12;color: red;">*</span></label>
                            <select name="" class="form-control" id="">
                                <option value="" selected disabled>Select Branch</option>
                                <option value="">Dhaka</option>
                            </select>
                        </div>
                        <div class="form_group mb-2">
                            <label for="">Account holder name <span style="font-size: 12;color: red;">*</span></label>
                            <input type="text" placeholder="Account holder name" class="form-control">
                        </div>
                        <div class="form_group mb-2">
                            <label for="">IBAN number(optional)</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form_group mb-2">
                            <label for="">Account Number <span style="font-size: 12;color: red;">*</span></label>
                            <input type="text" placeholder="1456852478546245" class="form-control">
                        </div>
                        <div class="form_group mb-2">
                            <label for="">SWIFT code(Optional)</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form_group mb-2">
                            <label for="">Select an option for Varification <span
                                    style="font-size: 12;color: red;">*</span></label>
                            <div class="inp_group">
                                <select name="" id="" class="form-control">
                                    <option value="">Email address</option>
                                    <option value="">Phone number</option>
                                </select>
                            </div>
                        </div>
                        <div class="form_group mb-2">
                            <label for="" class="">Enter Email address</label>
                            <input type="text" class="form-control">
                            <p style="font-size: 12px;" class="text-danger">Email does not match.</p>
                        </div>
                        <div class="form_group">
                            <label for="" class="">Enter Phone Number</label>
                            <input type="tel" class="form-control mobile_code">
                            <p style="font-size: 12px;" class="text-danger">Number does not match.</p>
                        </div>
                        <p style="font-size: 12px;" class="text-danger">Please check your inbox, spam folder, or SMS to
                            find the OTP.</p>
                        <button class="btn_confirm send_code_open w-100 " type="button">Send Code</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- edit crypto mdal  -->
        <div class="mdal_ edit_modal_crypto">
            <div class="mdal_content s-modal">
                <div class="mdal_head">
                    <!-- <div class="w-50"></div> -->
                    <h5>Edit Crypto Account</h5>
                    <button class="bt_close"><i class="fa-solid fa-x"></i></button>
                </div>
                <div class="mdal_body ">
                    <div class="form_group mb-2">
                        <label for="">Chennel name<span style="font-size: 12;color: red;">*</span></label>
                        <select name="" class="form-control" id="">
                            <option value="">Select channel name </option>
                            <option value="" selected>TRC20</option>
                        </select>
                    </div>
                    <div class="form_group mb-2">
                        <label for="">Address <span style="font-size: 12;color: red;">*</span></label>
                        <div class="inp_group">
                            <input type="text" class="form-control">
                            <button type="button" class="btn_edit"><span class="fa-regular fa-paste"></span></button>
                        </div>
                    </div>
                    <div class="form_group mb-2">
                        <label for="">Select an option for Varification <span
                                style="font-size: 12;color: red;">*</span></label>
                        <div class="inp_group">
                            <select name="" id="" class="form-control">
                                <option value="">Email address</option>
                                <option value="">Phone number</option>
                            </select>
                        </div>
                    </div>

                    <div class="form_group mb-2">
                        <label for="" class="">Enter Email address</label>
                        <input type="text" class="form-control">
                        <p style="font-size: 12px;" class="text-danger">Email does not match.</p>
                    </div>
                    <div class="form_group">
                        <label for="" class="">Enter Phone Number</label>
                        <input type="tel" class="form-control mobile_code">
                        <p style="font-size: 12px;" class="text-danger">Number does not match.</p>
                    </div>
                    <p style="font-size: 12px;" class="text-danger">Please check your inbox, spam folder, or SMS to find
                        the OTP.</p>
                    <button class="btn_confirm send_code_open w-100 " type="button">Send Code</button>
                </div>
            </div>
        </div>
        <!-- varification code  -->
        <div class="mdal_ send_code_modal">
            <div class="mdal_content s-modal">
                <div class="mdal_head">
                    <!-- <div class="w-50"></div> -->
                    <h5>Varification Code</h5>
                    <button class="bt_close"><i class="fa-solid fa-x"></i></button>
                </div>
                <div class="mdal_body s-modal">
                    <div class="row mb-3">
                        <div class="col-3">
                            <input type="text" min="1" max="1" class="form-control rounded-0">
                        </div>
                        <div class="col-3">
                            <input type="text" min="1" max="1" class="form-control rounded-0">
                        </div>
                        <div class="col-3">
                            <input type="text" min="1" max="1" class="form-control rounded-0">
                        </div>
                        <div class="col-3">
                            <input type="text" min="1" max="1" class="form-control rounded-0">
                        </div>
                    </div>
                    <button class="btn_confirm w-100 " type="button">Confirm</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.13/js/intlTelInput-jquery.min.js"></script>
<script>
import $ from "jquery";


import Common_MobileSidebar from '~/components/Common_MobileSidebar.vue';
import Common_MiniTabNavbar from '~/components/Common_MiniTabNavbar.vue';
import Common_MobileSearchProduct from '~/components/Common_MobileSearchProduct.vue';
import userSidebar from '~/components/userSidebar.vue';
import NavbarSecond from '~/components/NavbarSecond.vue';

export default {
    middleware: 'IsUser',
    components: {
        NavbarSecond,
        Common_MobileSidebar,
        Common_MiniTabNavbar,
        Common_MobileSearchProduct,
        userSidebar,

    },
    head: {
        title: 'My Withdrawal',
    },
    data() {
        return {

        }
    },
    mounted() {
        this.setupEventHandlers();

    },
    methods: {

        setupEventHandlers() {

            // mdal 
            $(".addac").click(function () {
                $(".addwithdraw").fadeIn();
            })
            $(".addac").click(function () {
                $(".search_bar").css("z-index", "0");
            })
            $(".bt_close").click(function () {
                $(".addwithdraw").fadeOut();
                $(".search_bar").css("z-index", "4");
            })
            // Ensure DOM elements exist before executing jQuery functions

            $(".post_mdal_open").click(function () {
                $(".post_mdal_").fadeIn();
            })
            $(".post_mdal_open").click(function () {
                $(".search_bar").css("z-index", "0");
            })
            $(".bt_close").click(function () {
                $(".post_mdal_").fadeOut();
                $(".search_bar").css("z-index", "4");
            })
            // mdal 
            $(".s_mdal_open").click(function () {
                $(".submitMdal").fadeIn();
            })
            $(".post_mdal_open").click(function () {
                $(".search_bar").css("z-index", "0");
            })
            $(".close_bt").click(function () {
                $(".submitMdal").fadeOut();
                $(".search_bar").css("z-index", "4");
            })
            // mdal 
            $(".fiat_mdal_open").click(function () {
                $(".fiat_mdal").fadeIn();
            })
            $(".fiat_mdal_open").click(function () {
                $(".search_bar").css("z-index", "0");
            })
            $(".bt_close").click(function () {
                $(".fiat_mdal").fadeOut();
                $(".search_bar").css("z-index", "4");
            })
            // mdal 
            $(".crypto_mdal_open").click(function () {
                $(".crypto_mdal").fadeIn();
            })
            $(".crypto_mdal_open").click(function () {
                $(".search_bar").css("z-index", "0");
            })
            $(".bt_close").click(function () {
                $(".crypto_mdal").fadeOut();
                $(".search_bar").css("z-index", "4");
            })
            // mdal fiat edit
            $(".edit_modal_fait_open").click(function () {
                $(".edit_modal_fait").fadeIn();
            })
            $(".bt_close").click(function () {
                $(".edit_modal_fait").fadeOut();
            })
            // mdal edit crypto
            $(".edit_modal_crypto_open").click(function () {
                $(".edit_modal_crypto").fadeIn();
            })
            $(".bt_close").click(function () {
                $(".edit_modal_crypto").fadeOut();
            })
            // send code modal 
            $(".send_code_open").click(function () {
                $(".send_code_modal").fadeIn();
            })
            $(".bt_close").click(function () {
                $(".send_code_modal").fadeOut();
            })

            // show hide password 
            $(".toggle_password").click(function () {
                $(this).toggleClass("fa-eye fa-eye-slash");
                var input = $($(this).attr("toggle"));
                if (input.attr("type") == "password") {
                    input.attr("type", "text");
                } else {
                    input.attr("type", "password");
                }
            });

            $(".onlyNumber6").keypress(function (e) {
                //if the letter is not digit then display error and don't type anything
                if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                    //display error message
                    $(".errmsgn").html("Numbers Only").show();
                    return false;
                } else {
                    $(".errmsgn").html("Password must be 6 digits.").show(5);
                }
                // additional check for length being exactly 6 digits
                if ($(this).val().length > 6) {
                    $(".errmsgn").html("Already 6 digits.").show(5);
                    // if length is already 6 or more, prevent further input
                    return false;
                } else {
                    $(".errmsgn").html("Password must be 6 digits.").show(5);
                }
            });

            // ========= errors for min number and must be number ========== 
            //called when key is pressed in textbox
            $(".onlyNumber").keypress(function (e) {
                // if the key pressed is not backspace, not delete, and not a digit
                if (e.which != 8 && e.which != 46 && (e.which < 48 || e.which > 57)) {
                    // display error message
                    $(".errmsg").html("Numbers Only").show(5).fadeOut("slow");
                    return false; // prevent typing the non-digit character
                }
            });
            // called when the input value changes
            $(".onlyNumber").on("input", function () {
                // get the current value of the input field
                var currentValue = parseInt($(this).val());

                // if the value is less than 10, show error message
                if (currentValue < 10) {
                    $(".errmsg").html("Minimum amount is 10").show();
                } else {
                    $(".errmsg").hide(); // hide error message if value is 10 or greater
                }
            });
            // Country Code Selection
            // $(".mobile_code").intlTelInput({
            //     initialCountry: "BD",
            //     separateDialCode: true,
            // });
                
        }
    }

}

</script>

<style scoped>
.loading-indicator {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(255, 255, 255, 0.8);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 9999;
}

/* For Loader */
.loader-container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: relative;
}

.loader-text {
    margin: 0;
    /* Remove default margin */
}

.loader-top {
    top: 0;
}

.loader-bottom {
    bottom: 0;
}

.edit_modal_fiat_open {
    color: yellow;
}
</style>
