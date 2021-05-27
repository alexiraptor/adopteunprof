<template>
  <div>
    <div class="container">
      <form v-on:submit="addannonce">
        <div class="form-group">
          <input
            type="text"
            v-model="matieres"
            placeholder="matieres"
            required="True"
            class="form-control"
          />
          <input
            type="text"
            v-model="content"
            placeholder="content"
            required
            class="form-control"
          />
          <input
            type="text"
            v-model="tarifs"
            placeholder="tarifs"
            required
            class="form-control"
          />
          <button class="btn btn-danger">Ajouter</button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "Addannonces",
  data() {
    return {
      matieres: "",
      content: "",
      tarifs: "",
    };
  },
  methods: {
    addannonce() {
      console.log("je suis la!");
      var token = this.$cookies.get("authtoken");
      axios
        .post(
          "http://localhost:8000/api/professor/annonces",
          {
            matieres: this.matieres,
            content: this.content,
            tarifs: this.tarifs,
          },
          {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          }
        )
        .then((res) => {
          console.log(res.data);
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>