<template>
  <div class="container">
    <div class="logout">
      <h2 class="title">Se déconnecter</h2>

      <button type="button" class="btn" id="logoutbtn" v-on:click="logout">
        Se déconnecter
      </button>

      <h2>{{ logouterrormessage }}</h2>
    </div>
  </div>
</template>

<script>
export default {
  name: "Logout",

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
      this.$cookies.remove("profID");
      this.$cookies.remove("FBid");
      this.$cookies.remove("FBname");
      this.$cookies.remove("studentID");
      // this.logouterrormessage = "You're logged out !";
      this.$router.push({ path: "/" });
    },
  },
};
</script>

<style scoped>
.container {
  font-family: "poppins", sans-serif;
  text-align: center;
}
.title {
  letter-spacing: -2px;
  text-align: center !important;
  font-size: 54px;
  font-weight: 700;
  line-height: 1;
  word-break: break-word;
  font-family: "poppins", sans-serif;
  color: #222a35;
  margin-top: 70px;
  margin-bottom: 20px;
}
#logoutbtn {
  background-color: #5caf01;
  border: 2px solid #5caf01;
  color: white;
  text-align: center;
  padding: 6px 16px;
  text-decoration: none;
  font-size: 15px;
  cursor: pointer;
  border-radius: 5px;
  transition: all 300ms ease-out;
  margin-top: 20px;
  margin-bottom: 50px;
}
#logoutbtn:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
}
</style>
