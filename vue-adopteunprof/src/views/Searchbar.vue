<template>
  <div class="search">
    <i class="bi bi-search"></i>
    <input
      type="search"
      id="searchfield"
      name="searchfield"
      data-stylerecorder="true"
      style="
        text-align: left;
        line-height: 25px;
        letter-spacing: 0px;
        font-weight: 400;
        border: 2px solid #ffffff;
        padding: 9px 28px 9px 40px;
        border-radius: 5px;
        background-color: transparent !important;
        color: #ffffff;
        width: 400px;
      "
      placeholder="votre recherche"
      v-model="coursMatiere"
    />
    <div class="button-search">
      <button @click="submit" type="button" class="btn-success">
        Rechercher
      </button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      coursMatiere: "",
    };
  },
  methods: {
    // cour() {
    //   this.$emit("cour", this.coursMatiere);
    //   console.log(this.coursMatiere);
    // },
    submit() {
      this.$emit("cour", this.coursMatiere);
      this.$router.push({
        name: "Home",
        params: { matieres: this.coursMatiere },
      });
      //this.GetMyInfo(this.$route.params.profID);
    },
  },
};
</script>

<style scoped>
.search {
  position: absolute;
  margin-top: -420px;
  margin-left: 100px;
}

.bi {
  color: white;
  position: absolute;
  margin-left: 13px;
  margin-top: 12px;
  font-size: 20px;
}

.btn-success {
  background-color: #5caf01;
  border: 2px solid #5caf01;
  color: white;
  padding: 12px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin-top: -47px;
  margin-left: 420px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}
.btn-success:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
}
</style>
