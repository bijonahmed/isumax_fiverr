<template>
<div>
    <LogoAndPayment />
    <!-- navbar section start here  -->
    <NavbarSecond/>
    <!-- Main section start here  -->

    <section class="main_content ">
        <div class="container">

            <div class="row">
                <div class="col-md-4">
                    <div class="aff_count">
                        <h5>Affliate <span>300</span></h5>
                        <p>No of register user </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="aff_count">
                        <h5>Total commission Paid <span>$300</span></h5>
                        <p>Earning Paid <a href="transfer_aff.html" class="btn_edit">Transfer</a></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="aff_count">
                        <h5>Total commission Pending <span>$300</span></h5>
                        <p>Earning To be Paid </p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="affiliate_table">
                        <div class="row">
                            <div class="col-12">
                                <div class="aff_title">
                                    <button type="button " class="active">Sale & Commission</button>
                                    <button type="button">Affiliate Links</button>
                                </div>
                            </div>
                        </div>
                        <div class="top_search_box">
                            <form action="">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-6">
                                        <input type="text" placeholder="Search date" onfocus="(this.type='date')">
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-6">
                                        <input type="text" placeholder="User Name">
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-6">
                                        <input type="text" placeholder="Product ID ">
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-6">
                                        <button type="submit" class="btn_cart" style="visibility: unset; color: #fff; width: fit-content;">Search </button>
                                    </div>

                                </div>
                            </form>
                        </div>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>user</th>
                                    <th>Product Id</th>
                                    <th>Quantity</th>
                                    <th>Sell Ammount</th>
                                    <th>commission Ammount</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>@user</td>
                                    <td>#dku_3234</td>
                                    <td>1</td>
                                    <td>$100</td>
                                    <td>$10</td>
                                    <td>9/5/2023</td>
                                </tr>
                                <tr>
                                    <td>@user</td>
                                    <td>#dku_3234</td>
                                    <td>1</td>
                                    <td>$100</td>
                                    <td>$10</td>
                                    <td>9/5/2023</td>
                                </tr>
                                <tr>
                                    <td>@user</td>
                                    <td>#dku_3234</td>
                                    <td>1</td>
                                    <td>$100</td>
                                    <td>$10</td>
                                    <td>9/5/2023</td>
                                </tr>
                                <tr>
                                    <td>@user</td>
                                    <td>#dku_3234</td>
                                    <td>1</td>
                                    <td>$100</td>
                                    <td>$10</td>
                                    <td>9/5/2023</td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- pagination -->
                        <div class="row">
                            <div class="col-12">
                                <div class="pagination">
                                    <ul>
                                        <li>
                                            <a href="#"> prv </a>
                                        </li>
                                        <li>
                                            <a href="#" class="active"> 1 </a>
                                        </li>
                                        <li>
                                            <a href="#"> 2 </a>
                                        </li>
                                        <li>
                                            <a href="#"> 3 </a>
                                        </li>
                                        <li>
                                            <a href="#"> next </a>
                                        </li>
                                    </ul>
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
</div>
</template>

<script>
import $ from 'jquery';
import Common_MobileSidebar from '~/components/Common_MobileSidebar.vue';
import Common_MiniTabNavbar from '~/components/Common_MiniTabNavbar.vue';
import Common_MobileSearchProduct from '~/components/Common_MobileSearchProduct.vue';
import RecentView from '~/components/RecentView.vue';
import NavbarSecond from '../../components/NavbarSecond.vue';
export default {
    components: {
        NavbarSecond,
        Common_MobileSidebar,
        Common_MiniTabNavbar,
        Common_MobileSearchProduct,
        RecentView
    },
    head: {
        title: 'Affiliate Dashboard',
    },

}
</script>
