<template>
  <div class="svg">
    <button v-on:click="RandomAvatar">AVATAR ALEATOIRE</button>
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

    <button v-on:click="ChooseAvatar">ENREGISTRER AVATAR</button>

    <body v-html="this.SVG"></body>
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

<style></style>
