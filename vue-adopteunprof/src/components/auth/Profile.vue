<template>
  <div class="container">
    <div class="profile">
      <h2 class="title">Choisissez un profil</h2>
      <div class="choice">
        <div class="labelel">
          <img
            :src="require('@/assets/avatar-prof.png')"
            alt="avatar-prof"
            class="avatar-prof"
          />
          <div class="choices">
            <label for="choice2">Professeur</label>
            <input
              id="choice2"
              class="choice2"
              type="radio"
              name="genderS"
              value="professor"
              v-on:change="whoisit"
            />
          </div>
        </div>
        <div class="labelprof">
          <img
            :src="require('@/assets/avatar-eleve.png')"
            alt="avatar-eleve"
            class="avatar-eleve"
          />
          <div class="choices">
            <label for="choice1">Elève</label>
            <input
              id="choice1"
              class="choice1"
              type="radio"
              name="genderS"
              value="student"
              checked="checked"
              v-on:change="whoisit"
            />
          </div>
        </div>
      </div>
      <div class="form">
        <div class="prof" v-if="itstudent">
          <input v-model="firstname" placeholder="Prénom" />
          <br />
          <input v-model="lastname" placeholder="Nom" />
          <br />
          <input type="number" v-model="age" placeholder="Age" />
          <br />
          <input v-model="adresse" placeholder="Adresse" />
          <br />
          <input v-model="phone" placeholder="Téléphone" maxlength="10" />
          <br />
          <input v-model="matieres" placeholder="Matières" />
          <br />
          <input v-model="description" placeholder="Description" />
        </div>

        <div class="student" v-else>
          <input v-model="firstname" placeholder="Prénom" />
          <br />
          <input v-model="lastname" placeholder="Nom" />
          <br />
          <input type="number" v-model="age" placeholder="Age" />
          <br />
          <input v-model="adresse" placeholder="Adresse" />
          <br />
          <input v-model="phone" placeholder="Téléphone" />
          <br />
          <input v-model="description" placeholder="Description" />
          <br />
          <input v-model="banque" placeholder="Informations bancaires" />
          <br />
          <input v-model="hobby" placeholder="Hobby" />
        </div>
        <button
          type="button"
          class="btn"
          id="profilebtn"
          v-on:click="createProfile"
        >
          Création de profil
        </button>
        <h2 class="error">{{ profileerrormessage }}</h2>
      </div>
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
      profileerrormessage: this.$route.params.profileerrormessage,
      profiltype: "",
      itstudent: false,
    };
  },
  created() {
    if (this.$cookies.get("authtoken") == undefined) {
      this.$router.push({
        name: "Login",
        params: {
          loginerrormessage:
            "Pour vous créer un profil Professeur ou Elève merci de vous connecter au préalable.",
        },
      });
    } else {
      console.log("AUTHENTICATED");
    }
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
              "http://89.234.182.164:8000/api/" + this.profiltype,
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
              "http://89.234.182.164:8000/api/" + this.profiltype,
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
  font-family: "poppins", sans-serif;
}
.form {
  max-width: 400px;
  height: 600px;
  margin-left: auto;
  margin-right: auto;
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
}
input::placeholder {
  color: black;
  text-align: left;
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
  margin-bottom: 80px;
}
#profilebtn {
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
  margin-top: 20px;
  float: right;
}
#profilebtn:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
}
.choice {
  max-width: 400px;
  margin-left: auto;
  margin-right: auto;
  display: flex;
  padding-left: 50px;
}
.choice1 {
  width: 15px;
  margin-top: -40px;
}
.choice2 {
  width: 15px;
  margin-top: -40px;
}
label {
  padding-left: 25px;
}
.labelel {
  padding-right: 110px;
  margin-top: -15px;
}
.avatar-prof,
.avatar-eleve {
  width: 100%;
  margin-bottom: 10px;
}
.avatar-eleve {
  margin-left: -30px;
}
.error {
  color: red;
  font-size: 14px;
  text-align: center;
}
/* .choices {
  margin-top: 10px;
  width: 15px;
  height: 15px;
} */
</style>
