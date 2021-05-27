<template>
  <div class="container">
    <div class="logout">
      <h2 class="title">LOG OUT :</h2>

      <VFacebookLogin />

      <button type="button" class="btn" id="logoutbtn" v-on:click="logout">
        LOG OUT
      </button>

      <h2>{{ logouterrormessage }}</h2>
    </div>
  </div>
</template>

<script>
import VFacebookLogin from "./FacebookLogin.vue";

export default {
  name: "Logout",

  components: {
    VFacebookLogin,
  },

  data() {
    return {
      logouterrormessage: "",
    };
  },

  methods: {
    logout() {
      localStorage.clear();
      this.$cookies.remove("userID");
      this.$cookies.remove("authtoken");
      this.$cookies.remove("redirect");
      this.logouterrormessage = "You're logged out !";
      this.$router.push({ path: "/" });
    },
  },
};
</script>

<style scoped>
.container {
  color: black;
  text-align: center;
  font-family: "Racing Sans One", sans-serif !important;
}

input {
  font-size: 15px;
  color: black;
  width: 15%;
  text-align: center;
  padding: 12px 20px;
  margin: 20px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-family: "Racing Sans One", sans-serif !important;
}
input::placeholder {
  color: black;
  font-weight: bold;
}
.title {
  font-size: 40px;
  font-family: "Racing Sans One", sans-serif !important;
}
#logoutbtn {
  color: black;
  font-weight: bold;
  background-color: grey;
}
</style>
