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
      v-on:click="Router('profspace')"
    >
      Espace professeur
    </button>

    <div class="title">Espace étudiant</div>
    <div class="espaceetu">
      <div class="gauche">
        <i class="bi bi-person-circle"></i>
        <div class="username">
          {{ students.firstname }} {{ students.lastname }}
        </div>
      </div>
      <div class="droite">
        <div class="donnees">Vos données :</div>
        <div class="studlist" v-if="stud">
          <label for="firstname" class="label">Prénom :</label>
          <div id="firstname">{{ students.firstname }}</div>
          <br />
          <label for="lastname" class="label">Nom :</label>
          <div id="lastname">{{ students.lastname }}</div>
          <br />
          <label for="age" class="label">Age :</label>
          <div id="age">{{ students.age }}</div>
          <br />
          <label for="adresse" class="label">Adresse :</label>
          <div id="adresse">{{ students.adresse }}</div>
          <br />
          <label for="phone" class="label">Téléphone :</label>
          <div id="phone">{{ students.phone }}</div>
          <br />
          <label for="description" class="label">Description :</label>
          <div id="description">{{ students.description }}</div>
          <br />
          <label for="information_bancaire" class="label"
            >Informations banquaires :</label
          >
          <div id="information_bancaire">
            {{ students.information_bancaire }}
          </div>
          <br />
          <label for="cours" class="label">Cours :</label>
          <div id="cours">{{ students.cours }}</div>
          <br />
          <label for="hobby" class="label">Hobby :</label>
          <div id="hobby">{{ students.hobby }}</div>
          <br />
          <label for="commentaires" class="label">Commentaires :</label>
          <div id="commentaires">{{ students.commentaires }}</div>
          <br />
          <label for="avatar" class="label">Avatar :</label>
          <body id="avatar" v-html="students.avatar"></body>

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

        <div class="studlist" v-if="!stud">
          <div class="ifnotstud">
            Vous n'avez pas encore créé de profil étudiant
          </div>
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
            <div class="donnees2">Modifier votre hobby :</div>
            <input v-model="hobby" placeholder="Nouveau Hobby" />

            <button
              type="button"
              class="btn btn-primary"
              id="loginbtn"
              v-on:click="whichfunction('hobby')"
            >
              Actualiser
            </button>
          </div>

          <div class="donnees2">Modifier votre description :</div>
          <input v-model="description" placeholder="Nouvelle description" />

          <button
            type="button"
            class="btn btn-primary"
            id="loginbtn"
            v-on:click="whichfunction('description')"
          >
            Actualiser
          </button>

          <div class="donnees2">Modifier vos informations bancaires :</div>
          <input v-model="banque" placeholder="Informations bancaires" />

          <button
            type="button"
            class="btn btn-primary"
            id="loginbtn"
            v-on:click="whichfunction('banque')"
          >
            Actualiser
          </button>
        </div>
      </div>
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
            this.loginerrormessage = "Mot de passe incorrect";
          }
        })
        .catch((error) => {
          console.log(error);
          this.loginerrormessage = "Mot de passe incorrect";
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
.espaceetu {
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
#description,
#information_bancaire,
#cours,
#hobby,
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
.ifnotstud {
  color: #2a323c;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
  text-align: center;
  margin-left: 10px;
  margin-top: 50px;
}
</style>
