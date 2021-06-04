<template>
  <div class="container">
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
    <div id="notes">{{ professors.rating }}</div>
    <label for="commentaires">Commentaires :</label>
    <div id="commentaires">{{ professors.commentaires }}</div>
    <label for="avatar">Avatar :</label>
    <body id="avatar" v-html="professors.avatar"></body>
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
        .get("https://89.234.182.164:8000/api/professor/" + profid, {
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
</style>
