<template>
  <div class="container">
    <div class="title">ESPACE PERSONNEL :</div>
    <div class="title">PROFESSEUR :</div>
    <div>{{ professors.firstname }}</div>
    <div>{{ professors.lastname }}</div>
    <div>{{ professors.age }}</div>
    <div>{{ professors.adresse }}</div>
    <div>{{ professors.phone }}</div>
    <div>{{ professors.matieres }}</div>
    <div>{{ professors.description }}</div>
    <div>{{ professors.information_bancaire }}</div>
    <div>{{ professors.cours }}</div>
    <div>{{ professors.notes }}</div>
    <div>{{ professors.commentaires }}</div>

    <div class="title">ELEVE :</div>
    <div>{{ students.firstname }}</div>
    <div>{{ students.lastname }}</div>
    <div>{{ students.age }}</div>
    <div>{{ students.adresse }}</div>
    <div>{{ students.phone }}</div>
    <div>{{ students.description }}</div>
    <div>{{ students.information_bancaire }}</div>
    <div>{{ students.cours }}</div>
    <div>{{ students.hobby }}</div>
    <div>{{ students.commentaires }}</div>

    <div class="title">UTILISATEUR :</div>
    <div>{{ users.name }}</div>
    <div>{{ users.email }}</div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "PersonalSpace",

  data() {
    return {
      professors: "",
      students: "",
      users: "",
      token: "",
    };
  },

  created() {
    this.token = this.$cookies.get("authtoken");
    this.GetMyInfo();
  },

  methods: {
    WhoAMI() {},

    GetMyInfo() {
      //PROF :
      axios
        .get("http://localhost:8000/api/prof/" + this.$cookies.get("userID"), {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        })
        .then((data) => {
          console.log(data.data);
          this.professors = data.data;
        })
        .catch((error) => {
          console.log(error);
        });

      //STUDENT :
      axios
        .get("http://localhost:8000/api/stud/" + this.$cookies.get("userID"), {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        })
        .then((data) => {
          console.log(data.data);
          this.students = data.data;
        })
        .catch((error) => {
          console.log(error);
        });

      //USER :
      axios
        .get("http://localhost:8000/api/user/" + this.$cookies.get("userID"), {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        })
        .then((data) => {
          console.log(data.data);
          this.users = data.data;
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
  color: black;
  text-align: center;
  font-family: "Racing Sans One", sans-serif !important;
}
input {
  font-size: 15px;
  color: black;
  width: 15%;
  text-align: center;
  padding: 12px 20px;
  margin: 20px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-family: "Racing Sans One", sans-serif !important;
}
input::placeholder {
  color: black;
  font-weight: bold;
}
.title {
  font-size: 40px;
  font-family: "Racing Sans One", sans-serif !important;
}
</style>
