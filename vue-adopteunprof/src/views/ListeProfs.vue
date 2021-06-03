<template>
  <Map />
  <div class="container">
    <div class="titre">
      <h1>Liste des Professeurs</h1>
      <br />
    </div>
    <div v-for="professor in professors" :key="professor.id">
      <ul class="prof-list">
        <li class="puce-list">
          Nom : {{ professor.firstname }} {{ professor.lastname }} /
          Localisation : {{ professor.adresse }} / Matières enseignées :
          {{ professor.matieres }} / Description : {{ professor.description }}
          <button class="prof-button" v-on:click="SeeMore(professor.id)">
            VOIR PLUS
          </button>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Listprofs",
  props: {
    professors: Object,
  },

  data() {
    return {
      url: "http://89.234.182.164:8000/api/professor",
      professors: [],
    };
  },

  created() {
    this.ListProfs(this.$route.params);
  },

  methods: {
    // GET Prof List :
    ListProfs() {
      var token = this.$cookies.get("authtoken");
      console.log(token);
      axios
        .get(this.url, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        })
        .then((data) => {
          this.professors = data.data.professors;
          console.log(data.data.professors);
        })
        .catch((error) => {
          console.log("AU SECOURS");
          console.log(error);
        });
    },

    /* Profil(profid) {
      console.log(profid);
      //ROUTING AVEC PARAMS
      this.$router.push({ name: "ProfProfil", params: { profID: profid } });
    },
    <button
            v-on:click="Profil(annonces.professorID)"
            type="button"
            class="btn"
          > 
    */

    SeeMore(professorId) {
      console.log(professorId);
      this.$router.push({
        name: "ProfProfil",
        params: { profID: professorId },
      });
    },
  },
};
</script>
<style scoped>
.titre {
  text-align: center;
}

.prof-list {
  text-align: center;
}

.container {
  margin-top: 20px;
}

.prof-list {
  font-size: 16px;
}

.prof-button {
  padding: 5px 6px;
  margin: 0 4px 4px 0;
  border-radius: 5px;
  text-align: center;
  font-size: 16px !important;
  line-height: 1;
  color: #222a35;
  font-weight: 400;
  border: 2px solid #d8efdb;
  background-color: transparent;
  cursor: pointer;
}

.prof-button:hover {
  background-color: #5caf01;
  border: 2px solid #5caf01;
  color: white;
}
</style>