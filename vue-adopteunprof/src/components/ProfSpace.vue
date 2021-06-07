<template>
  <div class="container">
    <button
      class="redirect_button"
      type="button"
      v-on:click="Router('userspace')"
    >
      Espace utilisateur
    </button>

    <button
      class="redirect_button"
      type="button"
      v-on:click="Router('studspace')"
    >
      Espace étudiant
    </button>

    <div class="title">Espace professeur</div>
    <div class="espaceprof">
      <div class="gauche">
        <i class="bi bi-person-circle"></i>
        <div class="username">
          {{ professors.firstname }} {{ professors.lastname }}
        </div>
        <router-link :to="`/personalspace/prof/addannonces`">
          <button type="button" class="redirect_button">
            Ajouter une annonce
          </button></router-link
        >
      </div>
      <div class="droite">
        <div class="donnees">Vos données :</div>
        <div class="proflist" v-if="prof">
          <label for="firstname" class="label">Prénom :</label>
          <div id="firstname">{{ professors.firstname }}</div>
          <br />
          <label for="lastname" class="label">Nom :</label>
          <div id="lastname">{{ professors.lastname }}</div>
          <br />
          <label for="age" class="label">Age :</label>
          <div id="age">{{ professors.age }}</div>
          <br />
          <label for="adresse" class="label">Adresse :</label>
          <div id="adresse">{{ professors.adresse }}</div>
          <br />
          <label for="phone" class="label">Téléphone :</label>
          <div id="phone">{{ professors.phone }}</div>
          <br />
          <label for="matieres" class="label">Matieres :</label>
          <div id="matieres">{{ professors.matieres }}</div>
          <br />
          <label for="description" class="label">Description :</label>
          <div id="description">{{ professors.description }}</div>
          <br />
          <label for="information_bancaire" class="label"
            >Informations banquaires :</label
          >
          <div id="information_bancaire">
            {{ professors.information_bancaire }}
          </div>
          <br />
          <label for="cours" class="label">Cours :</label>
          <div id="cours">{{ professors.cours }}</div>
          <br />
          <label for="notes" class="label">Notes :</label>
          <div id="notes">{{ professors.notes }}</div>
          <br />
          <label for="commentaires" class="label">Commentaires :</label>
          <div id="commentaires">{{ professors.commentaires }}</div>
          <br />
          <label for="avatar" class="label">Avatar :</label>
          <body id="avatar" v-html="professors.avatar"></body>
          <br />

          <div class="modif">Modifier vos informations :</div>
          <div class="modifinfocon">
            Pour modifier vos informations veuillez vous connecter
          </div>
          <div class="password">
            <input type="password" v-model="pwd" placeholder="Mot de passe" />

            <button
              type="button"
              class="btn btn-primary"
              id="loginbtn"
              v-on:click="Loginperso"
            >
              Se connecter
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
            Créer un profil
          </button>
        </div>

        <div v-if="loggedin">
          <div class="modify">
            <div class="donnees2">Modifier vos informations :</div>
            <input
              v-model="profdescription"
              placeholder="Nouvelle description"
            />

            <button
              type="button"
              class="btn btn-primary"
              id="loginbtn"
              v-on:click="whichfunction('profdescription')"
            >
              Description
            </button>

            <div class="donnees2">Modifier vos informations bancaires :</div>
            <input
              v-model="information_bancaire"
              placeholder="Informations bancaires"
            />

            <button
              type="button"
              class="btn btn-primary"
              id="loginbtn"
              v-on:click="whichfunction('information_bancaire')"
            >
              Actualiser
            </button>

            <div class="donnees2">Modifier vos matières :</div>
            <input v-model="matieres" placeholder="Matières" />

            <button
              type="button"
              class="btn btn-primary"
              id="loginbtn"
              v-on:click="whichfunction('matieres')"
            >
              Actualiser
            </button>
          </div>
        </div>
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
            this.loginerrormessage = "Mot de passe incorrect";
          }
        })
        .catch((error) => {
          console.log(error);
          this.loginerrormessage = "Mot de passe incorrect";
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

      //USER :
      axios
        .get("http://localhost:8000/api/user/" + this.$cookies.get("userID"), {
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
  width: 900px;
  height: 650px;
  text-align: center;
  margin-bottom: 1000px;
}
.redirect_button {
  background-color: #5caf01;
  border: 2px solid #5caf01;
  color: white;
  padding: 10px 16px;
  text-decoration: none;
  font-size: 15px;
  cursor: pointer;
  border-radius: 5px;
  transition: all 300ms ease-out;
  margin-top: 50px;
  margin-left: 10px;
}
.redirect_button:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
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
.espaceprof {
  padding: 45px 50px 47px;
  border: 1px solid #d8efdb;
  border-radius: 5px !important;
  box-sizing: border-box;
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: space-between;
}
.gauche {
  width: 300px;
}
.bi {
  font-size: 250px;
  color: rgb(238, 238, 238);
}
.username {
  font-size: 36px;
  color: #222a35;
  text-align: center !important;
  letter-spacing: 1px;
  font-weight: 700;
  line-height: 1;
  word-break: break-word;
  font-family: inherit;
}
.droite {
  padding-left: 40px;
  width: 500px;
  text-align: left;
}
.donnees {
  font-size: 26px;
  color: #222a35;
  letter-spacing: 1px;
  font-weight: 700;
  line-height: 1;
  word-break: break-word;
  font-family: inherit;
  margin-bottom: 15px;
}
.donnees2 {
  font-size: 26px;
  color: #222a35;
  letter-spacing: 1px;
  font-weight: 700;
  line-height: 1;
  word-break: break-word;
  font-family: inherit;
  margin-top: 30px;
  margin-bottom: 15px;
}
.label {
  color: #768292;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
}
#firstname,
#lastname,
#age,
#adresse,
#phone,
#matieres,
#description,
#information_bancaire,
#cours,
#notes,
#commentaires,
#avatar {
  color: #2a323c;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
  text-align: left;
  display: inline-block;
  margin-left: 10px;
}
.modif {
  font-size: 26px;
  color: #222a35;
  letter-spacing: 1px;
  font-weight: 700;
  line-height: 1;
  word-break: break-word;
  font-family: inherit;
  margin-top: 40px;
  margin-bottom: 15px;
}
.modifinfocon {
  color: #768292;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
  margin-bottom: 15px;
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
  margin-bottom: 15px;
}
input::placeholder {
  color: black;
  text-align: left;
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
}
#loginbtn:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
}
.error {
  color: red;
  font-size: 14px;
  margin-top: 10px;
}
</style>
