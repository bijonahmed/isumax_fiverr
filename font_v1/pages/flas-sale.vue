<template>
<div>
    <LogoAndPayment />
    <!-- navbar section start here  -->
    <NavbarSecond/>
    <!-- Main section start here  -->

    <section class="main_content ">
        <div class="container">

            <OfficialStoreProductList />
            <FlashSaleFilter />
            <RecentView />

        </div>
    </section>

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
import FlashSaleFilter from '~/components/FlashSaleFilter.vue';
import OfficialStoreProductList from '~/components/OfficialStoreProductList.vue';
import NavbarSecond from '../components/NavbarSecond.vue';


export default {
    components: {
        NavbarSecond,
        Common_MobileSidebar,
        Common_MiniTabNavbar,
        Common_MobileSearchProduct,
        RecentView,
        FlashSaleFilter,
        OfficialStoreProductList

    },
    head: {
        title: 'Flash Sale',
    },
    mounted() {

    }
}
</script>
