<template>
  <div class="student-list">
    <div class="data">
      <table class="ui celled table" style="margin: 10px">
        <thead>
          <tr>
            <th style="width: 50px; text-align: center">#</th>
            <th>Utilisateur ID</th>
            <th>Prénom</th>
            <th>Nom</th>
            <th>Avatar</th>
            <th>Âge</th>
            <th>Adresse</th>
            <th>Téléphone</th>
            <th>Description</th>
            <th>Info bancaire</th>
            <th>Cours</th>
            <th>Hobby</th>
            <th>Commentaires</th>
            <th>Historique de cours</th>
            <th>Historique de paiement</th>
            <th>Archives de conversation</th>

            <th style="width: 190px">Action</th>
          </tr>
        </thead>

        <tbody>
          <Student
            v-for="student in students"
            :key="student.id"
            :student="student"
            @onDelete="onDelete"
            @onEdit="onEdit"
          />
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
import Student from "./Student";

export default {
  name: "StudentList",
  components: {
    Student,
  },
  props: {
    students: {
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