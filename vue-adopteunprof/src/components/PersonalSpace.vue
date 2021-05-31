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
    </div>

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
    </div>

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

      <div class="title">PROF :</div>
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
</template>

<script>
import axios from "axios";
import Avatar from "./Avatar.vue";

export default {
  name: "PersonalSpace",

  components: {
    Avatar,
  },

  data() {
    return {
      hobby: "",
      logemail: "",
      loggedin: false,
      prof: false,
      stud: false,
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
          } else {
            this.loginerrormessage = "MAUVAIS MOT DE PASSE.";
          }
        })
        .catch((error) => {
          console.log(error);
        });
    },
    whichfunction(input = "") {
      if (input == "") {
        console.log("input vide");
      } else {
        console.log(input);
      }
      if (input == "password") this.UpdateMyPassword();
      else if (input == "email") this.UpdateMyEmail();
      else if (input == "name") this.UpdateMyName();
      else if (input == "hobby") this.UpdateMyStud(input);
      else if (input == "description") this.UpdateMyStud(input);
      else if (input == "banque") this.UpdateMyStud(input);
      else if (input == "profdescription") this.UpdateMyStud(input);
      else if (input == "information_bancaire") this.UpdateMyProf(input);
      else if (input == "matieres") this.UpdateMyProf(input);
    },
    /////// USERS :
    UpdateMyPassword() {
      //PASSWORD :
      if (this.old_pwd == this.pwd_confirm) {
        console.log("PWD MATCHES");
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
    // UPDATE STUDENT INFOS :
    UpdateMyStud(input) {
      if (input == "hobby") {
        axios
          .patch(
            "http://localhost:8000/api/student/" +
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
            "http://localhost:8000/api/student/" +
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
            "http://localhost:8000/api/student/" +
              this.$cookies.get("studentID"),
            {
              banque: this.banque,
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
    // UPDATE PROF INFOS :
    UpdateMyProf(input) {
      if (input == "matieres") {
        axios
          .patch(
            "http://localhost:8000/api/professor/" +
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
            "http://localhost:8000/api/professor/" +
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
            "http://localhost:8000/api/professor/" +
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
        .get("http://localhost:8000/api/prof/" + this.$cookies.get("userID"), {
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

      //STUDENT :
      axios
        .get("http://localhost:8000/api/stud/" + this.$cookies.get("userID"), {
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
