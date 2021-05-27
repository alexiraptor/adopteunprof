<template>
  <tr>
    <td>{{ student.userID }}</td>
    <td>{{ student.id }}</td>
    <td>{{ student.firstname }}</td>
    <td>{{ student.lastname }}</td>
    <td>{{ student.email }}</td>
    <td>{{ student.age }}</td>
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