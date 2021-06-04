<template>
  <div class="container">
    <div class="register">
      <h2 class="title">Inscription :</h2>
      <p>Merci de complèter ce formulaire afin de vous créer un compte.</p>

      <p>Identifiant : {{ name }}</p>
      <p>Email : {{ email }}</p>

      <input type="password" v-model="pwd" placeholder="MOT DE PASSE" />

      <input type="password" v-model="pwd_confirm" placeholder="CONFIRMATION" />
      <button type="button" class="btn" id="createbtn" v-on:click="createUser">
        INSCRIPTION
      </button>

      <h2 class="error">{{ registererrormessage }}</h2>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "FBregister",

  data() {
    return {
      FBid: "",
      name: "",
      email: "",
      pwd: "",
      pwd_confirm: "",
      registererrormessage: "",
    };
  },

  created() {
    this.FBid = this.$cookies.get("FBid");
    this.name = this.$cookies.get("FBname");
    this.email = this.$cookies.get("FBmail");
  },

  methods: {
    //REGISTER :
    createUser() {
      console.log("triggered");
      if (![this.pwd, this.pwd_confirm].every(Boolean)) {
        console.log("NULL");
        this.registererrormessage = "Tous les champs sont requis.";
      } else {
        if (this.pwd == this.pwd_confirm) {
          console.log("PWD MATCHES");

          console.log("ATTEMPT TO CREATE USER");

          axios
            .post("http://89.234.182.164:8000/api/register", {
              facebookID: this.$cookies.get("userID"),
              name: this.name,
              email: this.email,
              password: this.pwd,
              password_confirmation: this.pwd_confirm,
            })
            .then((response) => {
              console.log("USER :");
              console.log(response);
              this.registererrormessage = "Thank you !";
              this.$router.push({ path: "/login" });
            })
            .catch((error) => {
              console.log(error);
              this.registererrormessage =
                "L'email est déjà utilisé, merci d'en choisir un autre.";
            });
        } else {
          this.registererrormessage = "Informations incorrectes.";
        }
      }
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
#createbtn {
  color: black;
  font-weight: bold;
  font-family: "Racing Sans One", sans-serif !important;
  font-size: 15px;
  background-color: grey;
}
#loginbtn {
  color: black;
  font-weight: bold;
  background-color: grey;
}
#profilebtn {
  color: black;
  font-weight: bold;
  background-color: grey;
}
#logoutbtn {
  color: black;
  font-weight: bold;
  background-color: grey;
}
a {
  color: blue;
}
.error {
  color: red;
  font-size: 14px;
  text-align: center;
}
</style>
