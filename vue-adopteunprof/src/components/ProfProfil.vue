<template>
  <div class="container">
    <div class="title">Détail professeur :</div>
    <div class="detailprof">
      <div class="gauche">
        <i class="bi bi-person-circle"></i>
        <body id="avatar" v-html="professors.avatar"></body>
        <div class="username">
          {{ professors.firstname }} {{ professors.lastname }}
        </div>
      </div>
      <div class="droite">
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
        <router-link :to="`/listeprofs`">
          <button type="button" class="redirect_button">
            Retour
          </button></router-link
        >
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "ProfProfil",

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
    this.token = this.$cookies.get("authtoken");
    this.GetMyInfo(this.$route.params.profID);
  },

  methods: {
    // GET PROF INFOS :
    GetMyInfo(profid) {
      console.log(profid);
      axios
        .get("http://89.234.182.164:8000/api/professor/" + profid, {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        })
        .then((data) => {
          console.log(data.data.professor);
          if (data.data != "EMPTY") {
            this.professors = data.data.professor;
            console.log("YAAAAS");
          }
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
  height: 300px;
  text-align: center;
  margin-bottom: 300px;
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
.detailprof {
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
.label {
  color: #768292;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
}
#age,
#adresse,
#phone,
#matieres,
#description,
#information_bancaire,
#cours,
#notes,
#commentaires {
  color: #2a323c;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
  text-align: left;
  display: inline-block;
  margin-left: 10px;
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
}
.redirect_button:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
}
</style>
