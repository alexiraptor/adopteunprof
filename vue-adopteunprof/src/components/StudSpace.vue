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
      v-on:click="Router('profspace')"
    >
      ESPACE PROFESSEUR
    </button>

    <div class="title">ESPACE PERSONNEL :</div>

    <div class="studlist" v-if="stud">
      <div class="title">ELEVE :</div>
      <label for="firstname">Prénom :</label>
      <div id="firstname">{{ students.firstname }}</div>
      <label for="lastname">Nom :</label>
      <div id="lastname">{{ students.lastname }}</div>
      <label for="age">Age :</label>
      <div id="age">{{ students.age }}</div>
      <label for="adresse">Adresse :</label>
      <div id="adresse">{{ students.adresse }}</div>
      <label for="phone">Téléphone :</label>
      <div id="phone">{{ students.phone }}</div>
      <label for="description">Description :</label>
      <div id="description">{{ students.description }}</div>
      <label for="information_bancaire">Informations banquaires :</label>
      <div id="information_bancaire">{{ students.information_bancaire }}</div>
      <label for="cours">Cours :</label>
      <div id="cours">{{ students.cours }}</div>
      <label for="hobby">Hobby :</label>
      <div id="hobby">{{ students.hobby }}</div>
      <label for="commentaires">Commentaires :</label>
      <div id="commentaires">{{ students.commentaires }}</div>
      <label for="avatar">Avatar :</label>
      <body id="avatar" v-html="students.avatar"></body>

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

    <div class="studlist" v-if="!stud">
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
        <div class="title">ETUDIANT :</div>
        <div class="title">MODIFIER VOTRE HOBBY :</div>
        <input v-model="hobby" placeholder="NOUVEAU HOBBY" />

        <button
          type="button"
          class="btn btn-primary"
          id="loginbtn"
          v-on:click="whichfunction('hobby')"
        >
          HOBBY
        </button>
      </div>

      <div class="title">MODIFIER VOTRE DESCRIPTION :</div>
      <input v-model="description" placeholder="NOUVELLE DESCRIPTION" />

      <button
        type="button"
        class="btn btn-primary"
        id="loginbtn"
        v-on:click="whichfunction('description')"
      >
        DESCRIPTION
      </button>

      <div class="title">MODIFIER VOS INFOS BANQUAIRES :</div>
      <input v-model="banque" placeholder="INFORMATIONS BANQUAIRES" />

      <button
        type="button"
        class="btn btn-primary"
        id="loginbtn"
        v-on:click="whichfunction('banque')"
      >
        BANQUE
      </button>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "StudSpace",

  data() {
    return {
      hobby: "",
      logemail: "",
      loggedin: false,
      stud: false,
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
      if (link == "profspace")
        this.$router.push({ path: "/personalspace/prof" });
      else if (link == "studspace")
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
      if (input == "hobby") this.UpdateMyStud(input);
      else if (input == "description") this.UpdateMyStud(input);
      else if (input == "banque") this.UpdateMyStud(input);
    },
    // UPDATE STUDENT INFOS :
    UpdateMyStud(input) {
      if (input == "hobby") {
        axios
          .patch(
            "http://89.234.182.164:8000/api/student/" +
              this.$cookies.get("studentID"),
            {
              hobby: this.hobby,
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
      } else if (input == "description") {
        axios
          .patch(
            "http://89.234.182.164:8000/api/student/" +
              this.$cookies.get("studentID"),
            {
              description: this.description,
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
      } else if (input == "banque") {
        axios
          .patch(
            "http://89.234.182.164:8000/api/student/" +
              this.$cookies.get("studentID"),
            {
              information_bancaire: this.banque,
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
      //STUDENT :
      axios
        .get("http://89.234.182.164:8000/api/stud/" + this.$cookies.get("userID"), {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        })
        .then((data) => {
          console.log(data.data);
          if (data.data != "EMPTY") {
            this.stud = true;
            this.students = data.data;
            console.log("ID DE STUDENT :");
            this.$cookies.set("studentID", data.data.id);
            console.log(this.$cookies.get("studentID"));
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
.studlist {
  font-weight: bold;
  font-size: 20px;
  margin-bottom: 10px;
}
.redirect_button {
  margin-top: 20px;
}
</style>
