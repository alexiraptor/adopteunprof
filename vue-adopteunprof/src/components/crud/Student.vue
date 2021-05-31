<template>
  <tr>
    <td>{{ student.id }}</td>
    <td>{{ student.userID }}</td>
    <td>{{ student.firstname }}</td>
    <td>{{ student.lastname }}</td>
    <td>{{ student.avatar }}</td>
    <td>{{ student.age }}</td>
    <td>{{ student.adresse }}</td>
    <td>{{ student.phone }}</td>
    <td>{{ student.description }}</td>
    <td>{{ student.information_bancaire }}</td>
    <td>{{ student.cours }}</td>
    <td>{{ student.hobby }}</td>
    <td>{{ student.commentaires }}</td>
    <td>{{ student.historique_cours }}</td>
    <td>{{ student.historique_paiement }}</td>
    <td>{{ student.archives_conversation }}</td>

    <td>
      <button class="mini ui blue button" @click="onEdit">Modifier</button>
      <button class="mini ui red button" @click="onDelete">Supprimer</button>
    </td>
  </tr>
</template>

<script>
export default {
  name: "Student",
  props: {
    student: {
      type: Object,
    },
  },
  methods: {
    onDelete() {
      this.$emit("onDelete", this.student.id);
    },
    onEdit() {
      this.$emit("onEdit", this.student);
    },
  },
};
</script>

<style scoped>
</style>