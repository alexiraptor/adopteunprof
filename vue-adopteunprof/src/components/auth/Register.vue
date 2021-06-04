<template>
  <div class="container">
    <div class="register">
      <h2 class="title">Inscription :</h2>
      <div class="fb">
        <VFacebookLogin />
      </div>
      <p>ou</p>
      <p>Merci de complèter ce formulaire afin de vous créer un compte.</p>

      <input v-model="name" placeholder="Identifiant" />
      <br />
      <input v-model="email" placeholder="Email" />
      <br />
      <input type="password" v-model="pwd" placeholder="Mot de passe" />
      <br />
      <input
        type="password"
        v-model="pwd_confirm"
        placeholder="Confirmer le mot de passe"
      />
      <button type="button" class="btn" id="createbtn" v-on:click="createUser">
        S'inscrire
      </button>

      <router-link tag="li" to="/login">
        <p class="dejacompte">Vous avez déjà un compte ?</p>
      </router-link>

      <h2 class="error">{{ registererrormessage }}</h2>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import VFacebookLogin from "./FacebookLogin.vue";

export default {
  name: "Register",

  components: {
    VFacebookLogin,
  },

  data() {
    return {
      name: "",
      email: "",
      pwd: "",
      pwd_confirm: "",
      registererrormessage: "",
    };
  },

  methods: {
    //REGISTER :
    createUser() {
      console.log(this.name);
      console.log("triggered");
      if (this.name == "admin") {
        this.registererrormessage =
          "T'as cru t'allais m'avoir comme ça gamin ?'";
      } else {
        if (
          ![this.name, this.email, this.pwd, this.pwd_confirm].every(Boolean)
        ) {
          console.log("NULL");
          this.registererrormessage = "Tous les champs sont requis.";
        } else {
          if (this.pwd == this.pwd_confirm) {
            // console.log("PWD MATCHES");
            console.log("ATTEMPT TO CREATE USER");
            axios
              .post("http://89.234.182.164:8000/api/register", {
                facebookID: "NONE",
                name: this.name,
                email: this.email,
                password: this.pwd,
                password_confirmation: this.pwd_confirm,
              })
              .then((response) => {
                console.log(response);
                this.$router.push({ path: "/login" });
              })
              .catch((error) => {
                console.log(error);
                this.registererrormessage =
                  "L'email est déjà utilisé, merci d'en choisir un autre.";
              });
          } else {
            this.registererrormessage =
              "Le mot de passe et sa confirmation ne correspondent pas.";
          }
        }
      }
    },
  },
};
</script>

<style scoped>
.container {
  font-family: "poppins", sans-serif;
  max-width: 600px;
  height: 600px;
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
#createbtn {
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
  float: right;
}
#createbtn:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
}
p {
  color: black;
  text-align: center;
  font-size: 14px;
  margin-top: 30px;
}
.dejacompte {
  color: black;
  text-align: right;
  font-size: 12px;
  margin-top: 70px;
}
.dejacompte:hover {
  color: #5caf01;
}
.fb {
  text-align: center;
}

.error {
  color: red;
  font-size: 14px;
  text-align: center;
}
</style>
