<template>
    <title>Edit User</title>
    <div>
        <div class="content-wrapper">
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <p>Edit User</p>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item">
                                    <LazyNuxtLink to="/admin/dashboard">Dashboard</LazyNuxtLink>
                                </li>
                                <li class="breadcrumb-item active">
                                    <LazyNuxtLink to="/usermanagement/userlist">Back to List</LazyNuxtLink>
                                </li>

                            </ol>
                        </div>
                    </div>
                </div>
            </section>

            <!-- <button @click="pageRedirect()">Pages</button> -->
            <section class="content">
                <div class="container-fluid">
                    <!-- Start -->
                    <div class="card border-top border-0 border-4 border-info">
                        <div class="card-body">
                            <div class="border p-4 rounded">
                                <form @submit.prevent="saveData()" id="formrest" class="forms-sample"
                                    enctype="multipart/form-data">

                                    <div class="row mb-3 d-none">
                                        <label for="inputpassword_confirmation2"
                                            class="col-sm-3 col-form-label">Role</label>
                                        <div class="col-sm-9">

                                            <select name="role_id" v-model="insertdata.role_id"
                                                class="form-control role_id">
                                                <option value="" selected>Select</option>
                                                <option v-for='data in allrole' :value='data.id'>{{ data.name }}
                                                </option>
                                            </select>
                                            <span class="text-danger" v-if="errors.role_id">{{ errors.role_id[0]
                                                }}</span>
                                        </div>
                                    </div>

                                    <div class="row mb-3 d-none">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control name" v-model="insertdata.name"
                                                id="name" placeholder="Name">

                                            <input type="hidden" v-model="insertdata.id">

                                            <span class="text-danger" v-if="errors.name">{{ errors.name[0] }}</span>
                                        </div>
                                    </div>

                                    <!-- <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Email</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control name"  disabled
                                                id="email" placeholder="Email">
                                            <span class="text-danger" v-if="errors.email">{{ errors.email[0] }}</span>
                                        </div>
                                    </div> -->

                                    <div class="row mb-3  d-none">
                                        <label for="inputPhoneNo2" class="col-sm-3 col-form-label">Phone No</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control phone" v-model="insertdata.phone"
                                                id="phone" placeholder="Phone No">
                                            <span class="text-danger" v-if="errors.phone">{{ errors.phone[0] }}</span>
                                        </div>
                                    </div>




                                    <div class="row mb-3 d-none">
                                        <div class="col-sm-3">
                                            <span class="mb-0">Profile Picture</span>
                                        </div>
                                        <div class="col-sm-9 text-secondary">

                                            <input type="file" value class="form-control" id="fileInput"
                                                accept="image/png,image/jpeg" ref="files" @change="onFileSelected" />

                                            <img v-if="previewUrl" :src="previewUrl" alt="Preview" class="img-fluids" />
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputpassword_confirmation2"
                                            class="col-sm-3 col-form-label">Status</label>
                                        <div class="col-sm-9">
                                            <select name="status" v-model="insertdata.status" class="form-control">
                                                <option value="1" selected>Active</option>
                                                <option value="0">Inactive</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-sm-3 col-form-label"></label>
                                        <div class="col-sm-9">
                                            <button type="submit" class="btn btn-success px-5 w-100"><i
                                                    class="bx bx-check-circle mr-1"></i> Submit</button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                    <h4>Change Login Password</h4>
                    <div class="container-fluid">
                        <!-- Start -->
                        <div class="card border-top border-0 border-4 border-info">
                            <div class="card-body">
                                <div class="border p-4 rounded">
                                    <center>
                                        <div v-for="(errorArray, idx) in notifmsg" :key="idx">
                                            <div v-for="(allErrors, idx) in errorArray" :key="idx">
                                                <span class="text-danger">{{ allErrors }} </span>
                                            </div>
                                        </div>
                                    </center>
                                    <form @submit.prevent="updateChangePassword()" id="formrest" class="forms-sample"
                                        enctype="multipart/form-data">
                                        <div class="row mb-3">
                                            <label for="inputEnterYourName"
                                                class="col-sm-3 col-form-label">Password</label>
                                            <div class="col-sm-9">
                                                <input type="hidden" class="form-control id" v-model="changePass.id"
                                                    id="id">
                                                <input type="password" class="form-control password"
                                                    v-model="changePass.password" id="password" placeholder="Password">
                                                <span class="text-danger" v-if="errors.password">{{ errors.password[0]
                                                    }}</span>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="inputConfirmPassword2" class="col-sm-3 col-form-label">Confirm
                                                Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control password_confirmation"
                                                    v-model="changePass.password_confirmation"
                                                    id="password_confirmation" placeholder="Confirm Password">
                                                <span class="text-danger" v-if="errors.password_confirmation">{{
                                                    errors.password_confirmation[0] }}</span>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <label class="col-sm-3 col-form-label"></label>
                                            <div class="col-sm-9">
                                                <button type="submit" class="btn btn-success px-5 w-100"><i
                                                        class="bx bx-check-circle mr-1"></i> Submit</button>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>


                    <h4>Change Withdrawal Password</h4>
                    <div class="container-fluid">
                        <!-- Start -->
                        <div class="card border-top border-0 border-4 border-info">
                            <div class="card-body">
                                <div class="border p-4 rounded">
                                    <center>
                                        <!-- {{ witherrors }} -->
                                        <div v-for="(errorArray, idx) in witherrors" :key="idx">
                                            <div v-for="(allErrors, idx) in errorArray" :key="idx">
                                                <span class="text-danger">{{ allErrors }} </span>
                                            </div>
                                        </div>
                                    </center>
                                    <form @submit.prevent="updateChangeWithPassword()" id="formrest"
                                        class="forms-sample" enctype="multipart/form-data">
                                        <div class="row mb-3">
                                            <label for="inputEnterYourName"
                                                class="col-sm-3 col-form-label">Password</label>
                                            <div class="col-sm-9">

                                                <input type="password" class="form-control password"
                                                    v-model="changeWithPass.password" id="password"
                                                    placeholder="Password">


                                                <span class="text-danger" v-if="witherrors.password">{{
                                                    witherrors.password[0]
                                                    }}</span>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="inputConfirmPassword2" class="col-sm-3 col-form-label">Confirm
                                                Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control password_confirmation"
                                                    v-model="changeWithPass.password_confirmation"
                                                    id="password_confirmation" placeholder="Confirm Password">



                                                <span class="text-danger" v-if="witherrors.password_confirmation">{{
                                                    witherrors.password_confirmation[0] }}</span>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <label class="col-sm-3 col-form-label"></label>
                                            <div class="col-sm-9">
                                                <button type="submit" class="btn btn-success px-5 w-100"><i
                                                        class="bx bx-check-circle mr-1"></i> Submit</button>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END -->
            </section>
        </div>
    </div>
</template>

<script setup>
import { ref, reactive, onMounted } from 'vue';
import axios from 'axios';
import swal from 'sweetalert2';
import { useRouter } from 'vue-router';
const router = useRouter();

if (process.client) {
    window.Swal = swal;

}

definePageMeta({
    middleware: 'is-logged-out',
    title: 'Profile' // Set your desired page title here

})
const file = ref(null);
const insertdata = reactive({
    id: '',
    name: '',
    phone: '',
    email: '',
    addres: '',
    role_id: '',
    password: '',
    doc_file: '',
    password_confirmation: '',
    status: 1,
});

const changePass = reactive({
    id: '',
    password: '',
    password_confirmation: '',
});


const changeWithPass = reactive({
    password: '',
    password_confirmation: '',
});


const previewUrl = ref(null);
const errors = ref({});
const witherrors = ref({});
const allrole = ref({});
const notifmsg = ref('');
const wnotifmsg = ref('');
//Find Product Row
const checkRow = () => {
    const id = router.currentRoute.value.query.parameter;
    axios.get(`/user/getUserRow/${id}`).then(response => {
        console.log(" row:" + response.data.dataImg);
        insertdata.role_id = response.data.data.role_id;
        insertdata.doc_file = response.data.data.doc_file;
        insertdata.id = response.data.data.id;
        insertdata.name = response.data.data.name;
        insertdata.phone = response.data.data.phone_number;
        insertdata.addres = response.data.data.address;
        insertdata.email = response.data.data.email;
        insertdata.status = response.data.data.status;
        previewUrl.value = response.data.dataImg;
    });
};


const updateChangePassword = () => {
    const formData = new FormData();
    formData.append('id', insertdata.id);
    formData.append('password', changePass.password);
    formData.append('password_confirmation', changePass.password_confirmation)


    const headers = {
        'Content-Type': 'multipart/form-data'
    };
    axios.post('/user/changePassword', formData, { headers })
        .then((res) => {
            document.getElementById('formrest').reset();
            success_noti();
            router.push('/usermanagement/userlist');
        }).catch(error => {
            if (error.response && error.response.status === 422) {
                errors.value = error.response.data.errors;
            } else {
                // Handle other types of errors here
                console.error('An error occurred:', error);
            }
        });
};


const updateChangeWithPassword = () => {
    const formData = new FormData();
    formData.append('id', insertdata.id);
    formData.append('password', changeWithPass.password);
    formData.append('password_confirmation', changeWithPass.password_confirmation)


    const headers = {
        'Content-Type': 'multipart/form-data'
    };
    axios.post('/user/withdrawPasswordByAdmin', formData, { headers })
        .then((res) => {
            document.getElementById('formrest').reset();
            success_noti();
            router.push('/usermanagement/userlist');
        }).catch(error => {
            if (error.response && error.response.status === 422) {
                //  console.log("==" + error.response.data.witherrors);
                witherrors.value = error.response.data.witherrors;
            } else {
                // Handle other types of errors here
                console.error('An error occurred:', error);
            }
        });
};



const saveData = () => {
    const formData = new FormData();
    let role_id = $(".role_id").val();
    const userid = '';
    formData.append('id', insertdata.id);
    formData.append('file', file.value);
    formData.append('role_id', role_id);
    formData.append('name', insertdata.name);
    formData.append('email', insertdata.email);
    formData.append('phone', insertdata.phone);
    formData.append('addres', insertdata.addres);
    formData.append('status', insertdata.status);
    formData.append('password', insertdata.password);
    formData.append('password_confirmation', insertdata.password_confirmation);

    const headers = {
        'Content-Type': 'multipart/form-data'
    };
    axios.post('/user/updateUser', formData, { headers })
        .then((res) => {
            document.getElementById('formrest').reset();
            success_noti();
            router.push('/usermanagement/userlist');
        }).catch(error => {
            if (error.response && error.response.status === 422) {
                errors.value = error.response.data.errors;
            } else {
                // Handle other types of errors here
                console.error('An error occurred:', error);
            }
        });
};

const success_noti = () => {
    const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 1000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
        }
    });
    Toast.fire({
        icon: "success",
        title: "Your data has been successfully update."
    });
};

const getRuleList = () => {
    axios.get(`/user/allrolelistsInfo`).then(response => {
        //console.log("product row:" + response.data.data.id);
        allrole.value = response.data;
    });
};

// Call the loadeditor function when the component is mounted
onMounted(async () => {
    checkRow();
    getRuleList();
});

</script>

<style scoped>
.img_slide {
    max-height: 500px;
    width: 60%;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 0 20px #3f51b514;
    margin: 20px 0px;
    /* min-width: 350px; */
    /* margin: 10px 8px; */
    height: 100%;
}

.img_slide a {
    /* height: 100% !important; */
    width: 100%;
    display: block;
    height: 400px;
}

.img_slide a img {
    max-height: 400px;
    width: 100%;
    object-fit: cover;
    height: 100%;
}
</style>