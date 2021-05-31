<template>
  <datetime v-model="date"></datetime>
</template>

<script>
import { Datetime } from "vue-datetime";
import "vue-datetime/dist/vue-datetime.css";
export default {
  components: {
    Datetime,
  },
};
</script>

<style>
</style>