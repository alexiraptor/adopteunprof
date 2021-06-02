<template>
  <div class="container">
    <button
      class="redirect_button"
      type="button"
      v-on:click="Router('userspace')"
    >
      ESPACE USER
    </button>

    <button
      class="redirect_button"
      type="button"
      v-on:click="Router('studspace')"
    >
      ESPACE ETUDIANT
    </button>

    <div class="title">ESPACE PERSONNEL :</div>

    <div class="proflist" v-if="prof">
      <div class="title">PROFESSEUR :</div>
      <label for="firstname">Prénom :</label>
      <div id="firstname">{{ professors.firstname }}</div>
      <label for="lastname">Nom :</label>
      <div id="lastname">{{ professors.lastname }}</div>
      <label for="age">Age :</label>
      <div id="age">{{ professors.age }}</div>
      <label for="adresse">Adresse :</label>
      <div id="adresse">{{ professors.adresse }}</div>
      <label for="phone">Téléphone :</label>
      <div id="phone">{{ professors.phone }}</div>
      <label for="matieres">Matieres :</label>
      <div id="matieres">{{ professors.matieres }}</div>
      <label for="description">Description :</label>
      <div id="description">{{ professors.description }}</div>
      <label for="information_bancaire">Informations banquaires :</label>
      <div id="information_bancaire">{{ professors.information_bancaire }}</div>
      <label for="cours">Cours :</label>
      <div id="cours">{{ professors.cours }}</div>
      <label for="notes">Notes :</label>
      <div id="notes">{{ professors.notes }}</div>
      <label for="commentaires">Commentaires :</label>
      <div id="commentaires">{{ professors.commentaires }}</div>
      <label for="avatar">Avatar :</label>
      <body id="avatar" v-html="professors.avatar"></body>

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

        <h2 class="error">{{ loginerrormessage }}</h2>
      </div>
    </div>

    <div class="proflist" v-if="!prof">
      <button
        class="redirect_button"
        type="button"
        v-on:click="Router('createprofile')"
      >
        CRÉER UN PROFIL
      </button>
    </div>

    <div v-if="loggedin">
      <div class="modify">
        <div class="title">MODIFIER VOTRE DESCRIPTION :</div>
        <input v-model="profdescription" placeholder="NOUVELLE DESCRIPTION" />

        <button
          type="button"
          class="btn btn-primary"
          id="loginbtn"
          v-on:click="whichfunction('profdescription')"
        >
          DESCRIPTION
        </button>

        <div class="title">MODIFIER VOS INFOS BANQUAIRES :</div>
        <input
          v-model="information_bancaire"
          placeholder="INFORMATIONS BANQUAIRES"
        />

        <button
          type="button"
          class="btn btn-primary"
          id="loginbtn"
          v-on:click="whichfunction('information_bancaire')"
        >
          BANQUE
        </button>

        <div class="title">MODIFIER VOS MATIERES :</div>
        <input v-model="matieres" placeholder="MATIERES" />

        <button
          type="button"
          class="btn btn-primary"
          id="loginbtn"
          v-on:click="whichfunction('matieres')"
        >
          MATIERE
        </button>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "ProfSpace",

  data() {
    return {
      hobby: "",
      logemail: "",
      loggedin: false,
      prof: false,
      professors: "",
      token: "",
      old_pwd: "",
      pwd: "",
      pwd_confirm: "",
      email: "",
      name: "",
      pwderrormessage: "",
      loginerrormessage: "",
      profdescription: "",
      banque: "",
      information_bancaire: "",
      matieres: "",
    };
  },

  created() {
    if (this.$cookies.get("authtoken") == undefined) {
      this.$router.push({
        name: "Login",
        params: {
          loginerrormessage:
            "Pour accèder au profil personnel veuillez vous connecter ou créer un compte.",
        },
      });
    } else {
      console.log("AUTHENTICATED");
      this.token = this.$cookies.get("authtoken");
      this.GetMyInfo();
    }
  },

  methods: {
    Router(link) {
      if (link == "studspace")
        this.$router.push({ path: "/personalspace/stud" });
      else if (link == "userspace")
        this.$router.push({ path: "/personalspace/user" });
      else if (link == "createprofile") this.$router.push({ path: "/profile" });
    },
    Loginperso() {
      axios
        .post("http://89.234.182.164:8000/api/login", {
          email: this.email,
          password: this.pwd,
        })
        .then((response) => {
          console.log(response);
          if (response.data.error_message == undefined) {
            console.log("C GOOD");
            this.loggedin = true;
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
      if (input == "profdescription") this.UpdateMyProf(input);
      else if (input == "information_bancaire") this.UpdateMyProf(input);
      else if (input == "matieres") this.UpdateMyProf(input);
    },
    // UPDATE PROF INFOS :
    UpdateMyProf(input) {
      if (input == "matieres") {
        axios
          .patch(
            "http://89.234.182.164:8000/api/professor/" +
              this.$cookies.get("profID"),
            {
              matieres: this.matieres,
            },
            {
              headers: {
                Authorization: `Bearer ${this.token}`,
              },
            }
          )
          .then((data) => {
            console.log(data);
          })
          .catch((error) => {
            console.log(error);
          });
      } else if (input == "profdescription") {
        axios
          .patch(
            "http://89.234.182.164:8000/api/professor/" +
              this.$cookies.get("profID"),
            {
              description: this.profdescription,
            },
            {
              headers: {
                Authorization: `Bearer ${this.token}`,
              },
            }
          )
          .then((data) => {
            console.log(data);
          })
          .catch((error) => {
            console.log(error);
          });
      } else if (input == "information_bancaire") {
        axios
          .patch(
            "http://89.234.182.164:8000/api/professor/" +
              this.$cookies.get("profID"),
            {
              information_bancaire: this.information_bancaire,
            },
            {
              headers: {
                Authorization: `Bearer ${this.token}`,
              },
            }
          )
          .then((data) => {
            console.log(data);
          })
          .catch((error) => {
            console.log(error);
          });
      }
    },
    // GET PERSONAL INFOS :
    GetMyInfo() {
      //PROF :
      axios
        .get("http://89.234.182.164:8000/api/prof/" + this.$cookies.get("userID"), {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        })
        .then((data) => {
          console.log(data.data);
          if (data.data != "EMPTY") {
            this.prof = true;
            this.professors = data.data;
            console.log("ID DE PROF :");
            this.$cookies.set("profID", data.data.id);
            console.log(this.$cookies.get("profID"));
          }
        })
        .catch((error) => {
          console.log(error);
        });

      //USER :
      axios
        .get("http://89.234.182.164:8000/api/user/" + this.$cookies.get("userID"), {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        })
        .then((data) => {
          console.log(data);
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
.redirect_button {
  margin-top: 20px;
}
</style>
