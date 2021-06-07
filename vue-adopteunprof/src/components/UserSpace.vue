<template>
  <div class="container">
    <div class="title">Espace Personnel</div>
    <div class="espaceperso">
      <div class="gauche">
        <i class="bi bi-person-circle"></i>
        <div class="username">{{ users.name }}</div>
      </div>
      <div class="droite">
        <div class="userlist">
          <div class="donnees">Vos données :</div>
          <i class="bi bi-envelope"></i>
          <label for="email" class="email">Email :</label>
          <div class="useremail">{{ users.email }}</div>
        </div>
        <div class="vosespaces">
          <div class="espaces">Vos espaces :</div>
          <button
            class="redirect_button"
            type="button"
            v-on:click="Router('profspace')"
          >
            Espace Professeur
          </button>
          <button
            class="redirect_button"
            type="button"
            v-on:click="Router('studspace')"
          >
            Espace étudiant
          </button>
        </div>
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

          <div class="error">{{ loginerrormessage }}</div>

          <h2 class="error">{{ errormessage }}</h2>
        </div>

        <div class="espaceperso2">
          <div v-if="loggedin">
            <div class="modify">
              <div class="avatar">
                <Avatar />
              </div>
              <div class="donnees2">Modifier votre mot de passe :</div>
              <input
                type="password"
                v-model="old_pwd"
                placeholder="Entrez votre nouveau mot de passe"
              />

              <input
                type="password"
                v-model="pwd_confirm"
                placeholder="Confirmez votre nouveau mot de passe"
              />

              <button
                type="button"
                class="btn btn-primary"
                id="loginbtn"
                v-on:click="whichfunction('password')"
              >
                Actualiser
              </button>

              <h2 class="error">{{ pwderrormessage }}</h2>

              <div class="donnees2">Modifier votre email :</div>
              <input v-model="logemail" placeholder="Nouvel email" />

              <button
                type="button"
                class="btn btn-primary"
                id="loginbtn"
                v-on:click="whichfunction('email')"
              >
                Actualiser
              </button>

              <div class="donnees2">Modifier votre pseudo :</div>
              <input v-model="name" placeholder="Nouveau pseudo" />

              <button
                type="button"
                class="btn btn-primary"
                id="loginbtn"
                v-on:click="whichfunction('name')"
              >
                Actualiser
              </button>
            </div>
          </div>
        </div>
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
      loggedin: false,
      professors: "",
      students: "",
      users: "",
      token: "",
      old_pwd: "",
      pwd: "",
      pwd_confirm: "",
      new_email: "",
      email: "",
      new_name: "",
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
            this.loginerrormessage = "Mot de passe incorrect";
          }
        })
        .catch((error) => {
          console.log(error);
          this.loginerrormessage = "Mot de passe incorrect";
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
        if (this.old_pwd == "") this.old_pwd = this.pwd;
        if (this.new_name == "") this.new_name = this.name;
        if (this.new_email == "") this.new_email = this.email;
        axios
          .put(
            "http://localhost:8000/api/users/" + this.$cookies.get("userID"),
            {
              password: this.old_pwd,
              name: this.new_name,
              email: this.new_email,
            }
          )
          .then((data) => {
            console.log(data);
          })
          .catch((error) => {
            console.log(error);
          });
      } else {
        this.pwderrormessage = "Les deux mots de passe ne sont pas identiques";
      }
    },
    UpdateMyName() {
      //NAME :
      if (this.old_pwd == "") this.old_pwd = this.pwd;
      if (this.new_name == "") this.new_name = this.name;
      if (this.new_email == "") this.new_email = this.email;
      axios
        .put("http://localhost:8000/api/users/" + this.$cookies.get("userID"), {
          password: this.old_pwd,
          name: this.new_name,
          email: this.new_email,
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
      if (this.old_pwd == "") this.old_pwd = this.pwd;
      if (this.new_name == "") this.new_name = this.name;
      if (this.new_email == "") this.new_email = this.email;
      axios
        .put("http://localhost:8000/api/users/" + this.$cookies.get("userID"), {
          password: this.old_pwd,
          name: this.new_name,
          email: this.new_email,
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
          this.name = data.data.name;
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
  height: 400px;
  text-align: center;
  margin-bottom: 1250px;
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
.espaceperso {
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
  width: 540px;
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
.bi-envelope {
  color: #222a35;
  font-size: 20px;
  line-height: 1;
  margin-right: 15px;
}
.email {
  color: #768292;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
}
.useremail {
  color: #2a323c;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
  display: inline-block;
  margin-left: 10px;
  margin-top: -30px;
}
.espaces {
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
  margin-left: 0px;
}
.redirect_button:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
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
.avatar {
  margin-top: 70px;
}
</style>
