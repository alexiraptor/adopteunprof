<template>
  <div class="professor-list">
    <div class="data">
      <table class="ui celled table">
        <thead>
          <tr>
            <th>#</th>
            <th>User ID</th>
            <th>Professor ID</th>
            <th>Prénom</th>
            <th>Nom</th>
            <th>Avatar</th>
            <th>Age</th>
            <th>Adresse</th>
            <th>Téléphone</th>
            <th>Matières</th>
            <th>Description</th>
            <th>Informations bancaires</th>
            <th>Annonces ID</th>
            <th>Cours</th>
            <th>Notes</th>
            <th>Commentaires</th>
            <th>Historique de cours</th>
            <th>Historique de paiement</th>
            <th>Archives de conversation</th>

            <th>Action</th>
          </tr>
        </thead>

        <tbody>
          <Professor
            v-for="professor in professors"
            :key="professor.id"
            :professor="professor"
            @onDelete="onDelete"
            @onEdit="onEdit"
          />
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
import Professor from "./Professor";

export default {
  name: "ProfessorList",
  components: {
    Professor,
  },
  props: {
    professors: {
      type: Object,
    },
  },
  methods: {
    onDelete(id) {
      this.$emit("onDelete", id);
    },
    onEdit(data) {
      this.$emit("onEdit", data);
    },
  },
};
</script>

<style scoped>
</style>