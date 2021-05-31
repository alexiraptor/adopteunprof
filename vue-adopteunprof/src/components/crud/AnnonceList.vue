<template>
  <div class="annonce-list">
    <div class="data">
      <table class="ui celled table">
        <thead>
          <tr>
            <th style="width: 50px; text-align: center">#</th>
            <th>Nom</th>
            <th>Matières</th>
            <th>Contenu</th>
            <th>Tarifs</th>
            <th style="width: 190px">Action</th>
          </tr>
        </thead>

        <tbody>
          <Annonce
            v-for="annonce in annonces"
            :key="annonce.id"
            :annonce="annonce"
            @onDelete="onDelete"
            @onEdit="onEdit"
          />
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
import Annonce from "./Annonce";

export default {
  name: "AnnonceList",
  components: {
    Annonce,
  },
  props: {
    annonces: {
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