<template>
  <div class="container">
    <div class="profile">
      <h2 class="title">Choisissez un profil :</h2>

      <label for="choice1">Eleve :</label>
      <input
        id="choice1"
        type="radio"
        name="genderS"
        value="student"
        checked="checked"
        v-on:change="whoisit"
      />

      <label for="choice2">Professeur :</label>
      <input
        id="choice2"
        type="radio"
        name="genderS"
        value="professor"
        v-on:change="whoisit"
      />

      <div class="prof" v-if="itstudent">
        <input v-model="firstname" placeholder="PRENOM" />

        <input v-model="lastname" placeholder="NOM" />

        <input type="number" v-model="age" placeholder="AGE" />

        <input v-model="adresse" placeholder="ADRESSE" />

        <input v-model="phone" placeholder="TELEPHONE" maxlength="10" />

        <input v-model="matieres" placeholder="MATIÈRES" />

        <input v-model="description" placeholder="DESCRIPTION" />
      </div>

      <div class="student" v-else>
        <input v-model="firstname" placeholder="PRENOM" />

        <input v-model="lastname" placeholder="NOM" />

        <input type="number" v-model="age" placeholder="AGE" />

        <input v-model="adresse" placeholder="ADRESSE" />

        <input v-model="phone" placeholder="TELEPHONE" />

        <input v-model="description" placeholder="DESCRIPTION" />

        <input v-model="banque" placeholder="INFORMATIONS BANCAIRE" />

        <input v-model="hobby" placeholder="HOBBY" />
      </div>

      <button
        type="button"
        class="btn"
        id="profilebtn"
        v-on:click="createProfile"
      >
        CREATION DE PROFIL
      </button>

      <h2>{{ profileerrormessage }}</h2>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Profile",

  data() {
    return {
      name: "",
      firstname: "",
      lastname: "",
      adresse: "",
      phone: "",
      matieres: "",
      banque: "",
      hobby: "",
      description: "",
      age: "",
      profileerrormessage: "",
      profiltype: "",
      itstudent: false,
    };
  },

  methods: {
    whoisit() {
      var radios = document.getElementsByName("genderS");
      for (var i = 0, length = radios.length; i < length; i++) {
        if (radios[i].checked) {
          console.log(radios[i].value);
          this.profiltype = radios[i].value;
          break;
        }
      }
      if (this.profiltype == "student") {
        this.itstudent = false;
      } else if (this.profiltype == "professor") {
        this.itstudent = true;
      }
    },

    createProfile() {
      var userID = this.$cookies.get("userID");
      var token = this.$cookies.get("authtoken");
      console.log(token);
      console.log(userID);

      var radios = document.getElementsByName("genderS");
      for (var i = 0, length = radios.length; i < length; i++) {
        if (radios[i].checked) {
          console.log(radios[i].value);
          this.profiltype = radios[i].value;
          break;
        }
      }

      console.log(this.profiltype);
      if (this.profiltype == "professor") {
        if (
          ![
            this.firstname,
            this.lastname,
            this.adresse,
            this.phone,
            this.matieres,
            this.age,
            this.description,
          ].every(Boolean)
        ) {
          console.log("NULL");
          this.profileerrormessage = "All fields are required !";
        } else {
          console.log("ATTEMPT TO CREATE PROFESSOR PROFILE");

          axios
            .post(
              "http://localhost:8000/api/" + this.profiltype,
              {
                userID: userID,
                firstname: this.firstname,
                lastname: this.lastname,
                adresse: this.adresse,
                phone: this.phone,
                matieres: this.matieres,
                age: this.age,
                description: this.description,
                information_bancaire: "LA MOULAGA",
              },
              {
                headers: {
                  Authorization: `Bearer ${token}`,
                },
              }
            )
            .then((response) => {
              console.log(response);
              this.profileerrormessage = "Thank you !";
              this.$router.push({ path: "/" });
            })
            .catch((error) => {
              console.log(error);
            });
        }
      } else {
        if (![this.firstname, this.lastname, this.age].every(Boolean)) {
          console.log("NULL");
          this.profileerrormessage = "All fields are required !";
        } else {
          console.log("ATTEMPT TO CREATE STUDENT PROFILE");

          axios
            .post(
              "http://localhost:8000/api/" + this.profiltype,
              {
                userID: userID,
                age: this.age,
                firstname: this.firstname,
                lastname: this.lastname,
                adresse: this.adresse,
                phone: this.phone,
                description: this.description,
                information_bancaire: this.banque,
                hobby: this.hobby,
              },
              {
                headers: {
                  Authorization: `Bearer ${token}`,
                },
              }
            )
            .then((response) => {
              console.log(response);
              this.profileerrormessage = "Thank you !";
              this.$router.push({ path: "/" });
            })
            .catch((error) => {
              console.log(error);
            });
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
#profilebtn {
  color: black;
  font-weight: bold;
  background-color: grey;
}
</style>
