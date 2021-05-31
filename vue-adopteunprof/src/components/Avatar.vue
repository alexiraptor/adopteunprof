<template>
  <div class="svg">
    <div class="title">MODIFIER VOTRE AVATAR :</div>

    <button v-on:click="RandomAvatar">AVATAR ALEATOIRE</button>

    <body v-html="this.SVG"></body>

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

    <button v-on:click="ChooseAvatar">ENREGISTRER AVATAR</button>
  </div>
</template>

<script>
import { createAvatar } from "@dicebear/avatars";
import * as style from "@dicebear/micah";
import axios from "axios";

export default {
  name: "Avatar",
  data() {
    return {
      SVG: "",
      profiltype: "",
    };
  },
  created() {
    this.token = this.$cookies.get("authtoken");
    // this.GetMyProfile();
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
      console.log(this.profiltype);
    },
    RandomAvatar() {
      let svg = createAvatar(style, {
        // seed: "custom-seed",
        width: 100,
        height: 200,
      });
      console.log(svg);
      this.SVG = svg;
    },
    ChooseAvatar() {
      this.whoisit();
      if (this.profiltype == "student") {
        axios
          .patch(
            "http://localhost:8000/api/student/" +
              this.$cookies.get("studentID"),
            {
              avatar: this.SVG,
            },
            {
              headers: {
                Authorization: `Bearer ${this.token}`,
              },
            }
          )
          .then((data) => {
            console.log(data.data);
          })
          .catch((error) => {
            console.log(error);
          });
      } else if (this.profiltype == "professor") {
        axios
          .patch(
            "http://localhost:8000/api/professor/" +
              this.$cookies.get("profID"),
            {
              avatar: this.SVG,
            },
            {
              headers: {
                Authorization: `Bearer ${this.token}`,
              },
            }
          )
          .then((data) => {
            console.log(data.data);
          })
          .catch((error) => {
            console.log(error);
          });
      }
    },
  },
};
</script>

<style>
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
</style>
