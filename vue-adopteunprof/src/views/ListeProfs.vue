<template>
  <div class="container">
    <div class="titre">
      <h6 class="listeprof">Liste des professeurs</h6>
      <br />
    </div>

    <table class="tableau">
      <thead>
        <tr>
          <th class="colonne-nom">Nom</th>
          <th class="colonne-loc">Localisation</th>
          <th class="colonne-mat">Matière enseignée</th>
          <th class="colonne-des">Description</th>
          <th class="colonne-det">Détails</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="professor in professors" :key="professor.id">
          <td class="nom">
            <div>{{ professor.firstname }} {{ professor.lastname }}</div>
          </td>
          <td class="text-center-prodnam">
            <div>{{ professor.adresse }}</div>
          </td>
          <td class="text-center-catnam">
            <div>{{ professor.matieres }}</div>
          </td>
          <td class="text-center-qttprod">
            <div>{{ professor.description }}</div>
          </td>
          <td class="text-center-suppr">
            <button class="prof-button" v-on:click="SeeMore(professor.id)">
              VOIR PLUS
            </button>
          </td>
        </tr>
      </tbody>
    </table>
    <Map />
  </div>
</template>

<script>
import axios from "axios";
import ProfessorList from "../components/crud/ProfessorList.vue";
import Map from "../components/Map.vue";
import Loader from "../components/crud/Loader.vue";

export default {
  name: "Listprofs",
  props: {
    professors: Object,
  },
  components: {
    ProfessorList,
    Loader,
    Map,
  },

  data() {
    return {
      url: "http://localhost:8000/api/professor",
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
.listeprof {
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

.tableau {
  margin: auto;
  margin-bottom: 16px;
  border: 1px solid #ddd;
  width: 100%;
  max-width: 100%;
  background-color: transparent;
  border-spacing: 0;
}
thead tr th {
  background-color: #5caf01 !important;
  color: white;
  padding-left: 10px;
  padding-top: 8px;
  padding-bottom: 8px;
}
</style>