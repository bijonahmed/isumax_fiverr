<template>
<div>
    <LogoAndPayment />
    <!-- navbar section start here  -->
    <NavbarSecond/>
    <!-- Main section start here  -->
    <section class="main_content ">
        <div class="container">
            <div class="row">
                <div class="container mt-5">
                    <h1 class="mb-4"><center>Refund Policy</center></h1>
                    <div class="card mb-4">
                        <div class="card-body">
                            <h3 class="card-title">Eligibility for Returns</h3>
                            <p class="card-text">To be eligible for a return, your item must meet the following criteria:</p>
                            <ul>
                                <li>It must be in unused and in the same condition that you received it.</li>
                                <li>It must be in the original packaging.</li>
                                <li>Returns must be requested within [number of days] days of the purchase date.</li>
                            </ul>
                        </div>
                    </div>

                    <div class="card mb-4">
                        <div class="card-body">
                            <h3 class="card-title">How to Request a Return</h3>
                            <p class="card-text">If your item meets the eligibility criteria, please follow these steps to request a return:</p>
                            <ol>
                                <li>Contact our customer support team at [customer support email or phone number] to initiate the return process.</li>
                                <li>[Add any other specific instructions or forms required for returns]</li>
                            </ol>
                        </div>
                    </div>

                    <div class="card mb-4">
                        <div class="card-body">
                            <h3 class="card-title">Refund Process</h3>
                            <p class="card-text">Once we receive your returned item and inspect it, we will send you an email to notify you of the approval or rejection of your refund. If approved, your refund will be processed, and a credit will automatically be applied to your original payment method within [number of days] days.</p>
                        </div>
                    </div>

                    <div class="card mb-4">
                        <div class="card-body">
                            <h3 class="card-title">Return Shipping</h3>
                            <p class="card-text">The cost of return shipping is the responsibility of the customer, unless the return is due to an error on our part. If the return is due to our error, we will cover the cost of return shipping.</p>
                        </div>
                    </div>

                    <div class="card mb-4">
                        <div class="card-body">
                            <h3 class="card-title">Exceptions</h3>
                            <p class="card-text">There are certain situations where only partial refunds may be granted:</p>
                            <ul>
                                <li>Items that are returned more than [number of days] days after delivery.</li>
                                <li>Any item that is not in its original condition, is damaged, or is missing parts for reasons not due to our error.</li>
                            </ul>
                        </div>
                    </div>

                    <div class="card mb-4">
                        <div class="card-body">
                            <h3 class="card-title">Contact Us</h3>
                            <p class="card-text">If you have any questions about our refund policy, please contact us at [customer support email or phone number].</p>
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
</div>
</template>

<script>
import $ from 'jquery';
import NavbarSecond from '../components/NavbarSecond.vue';
export default {
    comments: {
        
        NavbarSecond,
    },
    head: {
        title: 'Refund',
    },

}
</script>
