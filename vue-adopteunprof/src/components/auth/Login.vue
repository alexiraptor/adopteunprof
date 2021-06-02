<template>
  <div class="container">
    <div class="login">
      <h2 class="title">Login</h2>

      <input v-model="email" placeholder="email" />
      <br />
      <input type="password" v-model="pwd" placeholder="mot de passe" />
      <br />
      <button
        type="button"
        class="btn btn-primary"
        id="loginbtn"
        v-on:click="loginUser"
      >
        Se connecter
      </button>

      <router-link tag="li" to="/register">
        <p>Pas encore inscrit ?</p>
      </router-link>

      <h2 class="error">{{ loginerrormessage }}</h2>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Login",

  data() {
    return {
      email: "",
      pwd: "",
      loginerrormessage: this.$route.params.loginerrormessage,
    };
  },

  methods: {
    loginUser() {
      if (![this.email, this.pwd].every(Boolean)) {
        console.log("NULL");
        this.loginerrormessage = "Tous les champs sont requis.";
      } else {
        console.log("ATTEMPT TO LOGIN USER");

        axios
          .post("http://89.234.182.164:8000/api/login", {
            email: this.email,
            password: this.pwd,
          })
          .then((response) => {
            console.log(response);

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

            // ADMIN :
            if (response.data.user.name == "admin") {
              this.$cookies.set("admintoken", response.data.user.name);
              console.log(this.$cookies.get("admintoken"));
            } else {
              console.log("PAS ADMIN");
            }

            this.$router.push({ path: "/profile" });
          })
          .catch((error) => {
            console.log(error);
            this.loginerrormessage = "Informations incorrectes.";
          });
      }
    },
  },
};
</script>

<style scoped>
.container {
  font-family: "poppins", sans-serif;
  max-width: 400px;
  height: 400px;
}
input {
  color: #222a35;
  opacity: 1;
  height: 47px;
  border: 1px solid #d8efdb;
  background-color: transparent;
  border-radius: 5px;
  padding-left: 28px;
  padding-right: 28px;
  padding-top: 9px;
  padding-bottom: 9px;
  font-size: 16px;
  font-weight: 400;
  width: 100%;
  display: block;
}
input::placeholder {
  color: black;
  text-align: left;
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
  margin-bottom: 40px;
}
#loginbtn {
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
  margin-top: 10px;
  float: right;
}
#loginbtn:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
}
p {
  color: black;
  text-align: right;
  font-size: 12px;
  margin-top: 60px;
}
p:hover {
  color: #5caf01;
}

.error {
  color: red;
  font-size: 14px;
  text-align: center;
}
</style>
