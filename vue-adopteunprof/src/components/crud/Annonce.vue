<template>
  <tr>
    <td>{{ annonce.id }}</td>
    <td>{{ annonce.professor_name }}</td>
    <td>{{ annonce.matieres }}</td>
    <td>{{ annonce.content }}</td>
    <td>{{ annonce.tarifs }}</td>

    <td>
      <button class="mini ui blue button" @click="onEdit">Modifier</button>
      <button class="mini ui red button" @click="onDelete">Supprimer</button>
    </td>
  </tr>
</template>

<script>
export default {
  name: "Annonce",
  props: {
    annonce: {
      type: Object,
    },
  },
  methods: {
    onDelete() {
      this.$emit("onDelete", this.annonce.id);
    },
    onEdit() {
      this.$emit("onEdit", this.annonce);
    },
  },
};
</script>

<style scoped></style>
