<template>
  <tr>
    <td>{{ user.id }}</td>
    <td>{{ user.name }}</td>
    <td>{{ user.email }}</td>
    <td>{{ user.password }}</td>
    <td>{{ user.facebookID }}</td>

    <td>
      <button class="mini ui blue button" @click="onEdit">Modifier</button>
      <button class="mini ui red button" @click="onDelete">Supprimer</button>
    </td>
  </tr>
</template>

<script>
export default {
  name: "User",
  props: {
    user: {
      type: Object,
    },
  },
  methods: {
    onDelete() {
      this.$emit("onDelete", this.user.id);
    },
    onEdit() {
      this.$emit("onEdit", this.user);
    },
  },
};
</script>

<style scoped>
</style>