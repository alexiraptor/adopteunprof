<template>
  <div class="container">
    <div class="login">
      <h2 class="title">Login :</h2>

      <input v-model="email" placeholder="EMAIL" />

      <input type="password" v-model="pwd" placeholder="MOT DE PASSE" />

      <button type="button" class="btn" id="loginbtn" v-on:click="loginUser">
        LOGIN
      </button>

      <router-link tag="li" to="/register">
        <p>Pas encore inscrit ?</p>
      </router-link>

      <h2>{{ loginerrormessage }}</h2>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Login",

  // components: {
  //       FacebookLogin
  //   },

  data() {
    return {
      email: "",
      pwd: "",
      loginerrormessage: "",
    };
  },

  methods: {
    loginUser() {
      if (![this.email, this.pwd].every(Boolean)) {
        console.log("NULL");
        this.loginerrormessage = "Tous les champs sont requis !";
      } else {
        console.log("ATTEMPT TO LOGIN USER");

        axios
          .post("http://localhost:8000/api/login", {
            email: this.email,
            password: this.pwd,
          })
          .then((response) => {
            console.log(response);
            this.loginerrormessage = "Bienvenu !";
            // ID :
            console.log("ID IS :");
            var userid = response.data.user.id;
            this.$cookies.set("userID", userid);
            console.log(this.$cookies.get("userID"));

            // TOKEN :
            var token = response.data.token;
            console.log("TOKEN IS :");
            this.$cookies.set("authtoken", token);
            console.log(this.$cookies.get("authtoken"));
            this.$router.push({ path: "/profile" });
          })
          .catch((error) => {
            console.log(error);
          });
      }
    },
    logout() {
      localStorage.clear();
      this.$cookies.remove("userID");
      this.$cookies.remove("authtoken");
      console.log(this.$cookies.get("authtoken"));
      // this.$router.push({ path: '/' })
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
#loginbtn {
  color: black;
  font-weight: bold;
  background-color: grey;
}
a {
  color: blue;
}
</style>
