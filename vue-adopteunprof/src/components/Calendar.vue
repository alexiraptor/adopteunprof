<template>
  <div class="datepicker">
    <datepicker
      class="date"
      :format="customDate"
      v-model="time"
      :inline="true"
      type="date"
    />
    <div>
      Choississez votre heure:
      <Vuetimepicker />
    </div>
  </div>
</template>

<script>
import datepicker from "vue3-datepicker";
import Vuetimepicker from "vue3-timepicker";
import "vue-datetime/dist/vue-datetime.css";
import "vue3-timepicker/dist/VueTimepicker.css";
export default {
  components: {
    datepicker,
    Vuetimepicker,
  },
  data() {
    return {
      time: "",
    };
  },
  methods: {
    customDate(date) {
      this.time = moment(date).format("DD-MM-YYYY");
    },
  },
};
</script>

<style scoped>
</style>