<template>
  <tr>
    <td>{{ professor.id }}</td>
    <td>{{ professor.userID }}</td>
    <td>{{ professor.professorID }}</td>
    <td>{{ professor.firstname }}</td>
    <td>{{ professor.lastname }}</td>
    <td>{{ professor.avatar }}</td>
    <td>{{ professor.age }}</td>
    <td>{{ professor.adresse }}</td>
    <td>{{ professor.phone }}</td>
    <td>{{ professor.matieres }}</td>
    <td>{{ professor.description }}</td>
    <td>{{ professor.information_bancaire }}</td>
    <td>{{ professor.annoncesID }}</td>
    <td>{{ professor.cours }}</td>
    <td>{{ professor.rating }}</td>
    <td>{{ professor.commentaires }}</td>
    <td>{{ professor.historique_cours }}</td>
    <td>{{ professor.historique_paiement }}</td>
    <td>{{ professor.archives_conversation }}</td>

    <td>
      <button class="mini ui blue button" @click="onEdit">Modifier</button>
      <button class="mini ui red button" @click="onDelete">Supprimer</button>
    </td>
  </tr>
</template>

<script>
export default {
  name: "Professor",
  props: {
    professor: {
      type: Object,
    },
  },
  methods: {
    onDelete() {
      this.$emit("onDelete", this.professor.id);
    },
    onEdit() {
      this.$emit("onEdit", this.professor);
    },
  },
};
</script>

<style scoped></style>
