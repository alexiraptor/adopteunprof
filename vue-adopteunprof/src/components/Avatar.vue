<template>
  <div class="svg">
    <div class="donnees">Modifier votre avatar :</div>
    <div class="allavat">
      <div class="gaucheavat">
        <div class="avatargenerate">
          <body v-html="this.SVG"></body>
        </div>
        <button v-on:click="RandomAvatar" class="randomavat">
          Avatar aléatoire
        </button>
      </div>
      <div class="droiteavat">
        <div class="appliquer">Appliquer pour profil :</div>
        <input
          id="choice1"
          type="radio"
          name="genderS"
          value="student"
          checked="checked"
          v-on:change="whoisit"
        />
        <label for="choice1" class="choice1avat">Elève</label>
        <br /><br />
        <input
          id="choice2"
          type="radio"
          name="genderS"
          value="professor"
          v-on:change="whoisit"
        />
        <label for="choice2" class="choice2avat">Professeur :</label>
        <button v-on:click="ChooseAvatar" class="buttonsaveavat">
          Sauvegarder
        </button>
      </div>
    </div>
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
            "http://89.234.182.164:8000/api/student/" +
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
            "http://89.234.182.164:8000/api/professor/" +
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
.allavat {
  box-sizing: border-box;
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: space-between;
}
.gaucheavat {
  width: 300px;
}
.avatargenerate {
  border: 1px solid #d8efdb;
  border-radius: 5px !important;
  width: 155px;
  height: 210px;
  padding-top: 5px;
  padding-left: 25px;
}
.randomavat,
.buttonsaveavat {
  background-color: #5caf01;
  border: 2px solid #5caf01;
  color: white;
  padding: 10px 16px;
  text-decoration: none;
  font-size: 15px;
  cursor: pointer;
  border-radius: 5px;
  transition: all 300ms ease-out;
  margin-top: 10px;
}
.randomavat:hover, .buttonsaveavat:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
}
.droiteavat {
  margin-top: 40px;
}
.appliquer {
  color: #768292;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
  margin-bottom: 25px;
}
.choice1avat, .choice2avat {
  margin-left: 7px;
}
.buttonsaveavat {
  margin-top: 62px;
}
</style>
