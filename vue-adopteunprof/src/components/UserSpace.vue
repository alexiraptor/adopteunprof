<template>
  <div class="container">
    <button
      class="redirect_button"
      type="button"
      v-on:click="Router('profspace')"
    >
      ESPACE PROFESSEUR
    </button>
    <button
      class="redirect_button"
      type="button"
      v-on:click="Router('studspace')"
    >
      ESPACE ETUDIANT
    </button>

    <div class="title">ESPACE PERSONNEL :</div>

    <div class="userlist">
      <div class="title">UTILISATEUR :</div>
      <label for="name">Pseudo :</label>
      <div>{{ users.name }}</div>
      <label for="email">Email :</label>
      <div>{{ users.email }}</div>
    </div>

    <div class="title">MODIFIER VOS INFOS PERSOS :</div>

    <div class="password">
      <input type="password" v-model="pwd" placeholder="MOT DE PASSE" />

      <button
        type="button"
        class="btn btn-primary"
        id="loginbtn"
        v-on:click="Loginperso"
      >
        LOGGED IN
      </button>

      <div>{{ loginerrormessage }}</div>

      <h2 class="error">{{ errormessage }}</h2>
    </div>

    <div v-if="loggedin">
      <div class="modify">
        <Avatar />

        <div class="title">MODIFIER VOTRE MOT DE PASSE :</div>
        <input
          type="password"
          v-model="old_pwd"
          placeholder="ENTREZ VOTRE MOT DE PASSE"
        />

        <input
          type="password"
          v-model="pwd_confirm"
          placeholder="CONFIRMATION"
        />

        <button
          type="button"
          class="btn btn-primary"
          id="loginbtn"
          v-on:click="whichfunction('password')"
        >
          PASSWORD
        </button>

        <h2 class="error">{{ pwderrormessage }}</h2>

        <div class="title">MODIFIER VOTRE EMAIL :</div>
        <input v-model="logemail" placeholder="NOUVEL EMAIL" />

        <button
          type="button"
          class="btn btn-primary"
          id="loginbtn"
          v-on:click="whichfunction('email')"
        >
          EMAIL
        </button>

        <div class="title">MODIFIER VOTRE PSEUDO :</div>
        <input v-model="name" placeholder="NOUVEAU PSEUDO" />

        <button
          type="button"
          class="btn btn-primary"
          id="loginbtn"
          v-on:click="whichfunction('name')"
        >
          PSEUDO
        </button>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import Avatar from "./Avatar.vue";

export default {
  name: "UserSpace",

  components: {
    Avatar,
  },

  data() {
    return {
      hobby: "",
      logemail: "",
      loggedin: false,
      professors: "",
      students: "",
      users: "",
      token: "",
      old_pwd: "",
      pwd: "",
      pwd_confirm: "",
      email: "",
      name: "",
      pwderrormessage: "",
      loginerrormessage: "",
      description: "",
      profdescription: "",
      banque: "",
      information_bancaire: "",
      matieres: "",
    };
  },

  created() {
    this.token = this.$cookies.get("authtoken");
    this.GetMyInfo();
  },

  methods: {
    Router(link) {
      if (link == "profspace")
        this.$router.push({ path: "/personalspace/prof" });
      if (link == "studspace")
        this.$router.push({ path: "/personalspace/stud" });
      if (link == "userspace")
        this.$router.push({ path: "/personalspace/user" });
    },
    Loginperso() {
      axios
        .post("http://localhost:8000/api/login", {
          email: this.email,
          password: this.pwd,
        })
        .then((response) => {
          console.log(response);
          if (response.data.error_message == undefined) {
            console.log("C GOOD");
            this.loggedin = true;
            this.loginerrormessage = "";
          } else {
            this.loginerrormessage = "MAUVAIS MOT DE PASSE.";
          }
        })
        .catch((error) => {
          console.log(error);
          this.loginerrormessage = "MAUVAIS MOT DE PASSE.";
        });
    },
    whichfunction(input = "") {
      if (input == "password") this.UpdateMyPassword();
      else if (input == "email") this.UpdateMyEmail();
      else if (input == "name") this.UpdateMyName();
    },
    /////// USERS :
    UpdateMyPassword() {
      //PASSWORD :
      if (this.old_pwd == this.pwd_confirm) {
        console.log("PWD MATCHES");
        this.pwderrormessage = "";
        axios
          .put(
            "http://localhost:8000/api/users/" + this.$cookies.get("userID"),
            {
              password: this.old_pwd,
              name: this.users.name,
              email: this.email,
            }
          )
          .then((data) => {
            console.log(data);
          })
          .catch((error) => {
            console.log(error);
          });
      } else {
        this.pwderrormessage = "LES MOTS DE PASSE NE CORRESPONDENT PAS !";
      }
    },
    UpdateMyName() {
      //NAME :
      axios
        .put("http://localhost:8000/api/users/" + this.$cookies.get("userID"), {
          password: this.pwd,
          name: this.name,
          email: this.email,
        })
        .then((data) => {
          console.log(data);
        })
        .catch((error) => {
          console.log(error);
        });
    },
    UpdateMyEmail() {
      //EMAIL :
      axios
        .put("http://localhost:8000/api/users/" + this.$cookies.get("userID"), {
          password: this.pwd,
          name: this.users.name,
          email: this.logemail,
        })
        .then((data) => {
          console.log(data);
        })
        .catch((error) => {
          console.log(error);
        });
    },
    // GET PERSONAL INFOS :
    GetMyInfo() {
      //USER :
      axios
        .get("http://localhost:8000/api/user/" + this.$cookies.get("userID"), {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        })
        .then((data) => {
          console.log(data);
          this.users = data.data;
          this.email = data.data.email;
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>

<style scoped>
.container {
  font-family: "poppins", sans-serif;
  max-width: 600px;
  /* height: 600px; */
  text-align: center;
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
  width: 80%;
}
input::placeholder {
  color: black;
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
  margin-bottom: 40px;
}
label {
  font-size: 15px !important;
  font-weight: lighter;
  margin-top: 10px;
}
.proflist {
  font-weight: bold;
  font-size: 20px;
  margin-bottom: 10px;
}
.studlist {
  font-weight: bold;
  font-size: 20px;
  margin-bottom: 10px;
}
.userlist {
  font-weight: bold;
  font-size: 20px;
  margin-bottom: 10px;
}
.redirect_button {
  margin-top: 20px;
}
</style>
