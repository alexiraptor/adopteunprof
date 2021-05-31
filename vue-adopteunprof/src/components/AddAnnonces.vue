<template>
  <div>
    <h2 class="title">Ajouter une annonce</h2>
    <div class="container">
      <!-- <form v-on:submit="addannonce"> -->
      <div class="form-group">
        <!-- <input
          type="text"
          v-model="professor_name"
          placeholder="nom du professeur"
          required="True"
          class="form-control"
        /> -->
        <input
          type="text"
          v-model="matieres"
          placeholder="matières"
          required="True"
          class="form-control"
        />
        <br />
        <input
          type="text"
          v-model="content"
          placeholder="content"
          required
          class="form-control"
        />
        <br />
        <input
          type="text"
          v-model="tarifs"
          placeholder="tarifs"
          required
          class="form-control"
        />
        <br />
        <button type="button" class="btn btn-danger" v-on:click="addannonce">
          Ajouter
        </button>
      </div>
      <!-- </form> -->
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "Addannonces",
  data() {
    return {
      professor_name: "",
      matieres: "",
      content: "",
      tarifs: "",
      token: "",
    };
  },
  created() {
    this.token = this.$cookies.get("authtoken");
    this.GetMyInfo();
  },
  methods: {
    addannonce() {
      console.log("je suis la!");
      // var token = this.$cookies.get("authtoken");
      axios
        .post(
          "http://localhost:8000/api/annonces",
          {
            professorID: this.$cookies.get("profID"),
            professor_name: this.professor_name,
            matieres: this.matieres,
            content: this.content,
            tarifs: this.tarifs,
          },
          {
            headers: {
              Authorization: `Bearer ${this.token}`,
            },
          }
        )
        .then((res) => {
          console.log(res);
        })
        .catch((error) => {
          console.log(error);
        });
    },
    GetMyInfo() {
      axios
        .get("http://localhost:8000/api/prof/" + this.$cookies.get("userID"), {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        })
        .then((data) => {
          console.log(data.data);
          this.professors = data.data;
          console.log("ID DE PROF :");
          this.$cookies.set("profID", data.data.id);
          console.log(this.$cookies.get("profID"));
          this.professor_name =
            this.professors.firstname + " " + this.professors.lastname;
          console.log(this.professor_name);
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>

<style scoped>
.container {
  font-family: "poppins", sans-serif;
  max-width: 500px;
  height: 400px;
}
input {
  color: #222a35;
  opacity: 1;
  height: 47px;
  border: 1px solid #d8efdb;
  background-color: transparent;
  border-radius: 5px;
  padding-left: 28px;
  padding-right: 28px;
  padding-top: 9px;
  padding-bottom: 9px;
  font-size: 16px;
  font-weight: 400;
  width: 100%;
  display: block;
}
input::placeholder {
  color: black;
  text-align: left;
}
.title {
  letter-spacing: -2px;
  text-align: center !important;
  font-size: 54px;
  font-weight: 700;
  line-height: 1;
  word-break: break-word;
  font-family: "poppins", sans-serif;
  color: #222a35;
  margin-top: 70px;
  margin-bottom: 40px;
}
.btn {
  background-color: #5caf01;
  border: 2px solid #5caf01;
  color: white;
  text-align: center;
  padding: 6px 16px;
  text-decoration: none;
  font-size: 15px;
  cursor: pointer;
  border-radius: 5px;
  transition: all 300ms ease-out;
  margin-top: 10px;
  float: right;
}
.btn:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
}
</style>
