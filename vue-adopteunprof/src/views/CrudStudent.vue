<template>
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css"
  />
  <div id="nav">
    <div class="ui main container">
      <MyForm :form="form" @onFormSubmit="onFormSubmit" />

      <StudentList :students="students" @onDelete="onDelete" @onEdit="onEdit" />
    </div>
  </div>
</template>

<script>
import axios from "axios";
import MyForm from "../components/crud/MyForm.vue";
import StudentList from "../components/crud/StudentList.vue";
import Loader from "../components/crud/Loader.vue";

export default {
  name: "CrudStudent",
  components: {
    MyForm,
    StudentList,
    Loader,
  },
  data() {
    return {
      url: "http://localhost:8000/api/student",
      students: [],
      form: {
        userID: "",
        firstname: "",
        lastname: "",
        email: "",
        age: "",
        isEdit: false,
      },
      loader: false,
    };
  },
  methods: {
    getStudents() {
      this.loader = true;
      var token = this.$cookies.get("authtoken");
      console.log(token);
      axios
        .get(this.url, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        })
        .then((data) => {
          this.students = data.data.students;
          console.log(data.data);
          console.log(data.data.students);

          this.loader = false;
        });
    },
    deleteStudent(id) {
      this.loader = true;
      var token = this.$cookies.get("authtoken");
      console.log(token);

      axios
        .delete(`${this.url}/${id}`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        })
        .then(() => {
          this.getStudents();
        })
        .catch((e) => {
          alert(e);
        });
    },
    createStudent(data) {
      this.loader = true;
      var token = this.$cookies.get("authtoken");
      console.log(token);

      axios
        .request({
          url: this.url,
          method: "POST",
          headers: {
            Authorization: `Bearer ${token}`,
          },
          data: {
            userID: data.userID,
            firstname: data.firstname,
            lastname: data.lastname,
            email: data.email,
            age: data.age,
          },
        })
        .then(() => {
          console.log(data.userID);
          this.getStudents();
        })
        .catch((e) => {
          console.log(e.response.data);
          console.log(e.response.status);
          console.log(e.response.headers);
        });
    },

    editStudent(data) {
      this.loader = true;
      var token = this.$cookies.get("authtoken");
      console.log(token);

      axios
        .request({
          url: `${this.url}/${data.id}`,
          method: "PUT",
          headers: {
            Authorization: `Bearer ${token}`,
          },
          data: {
            userID: data.userID,
            firstname: data.firstname,
            lastname: data.lastname,
            email: data.email,
            age: data.age,
          },
        })
        .then(() => {
          console.log(data.userID);
          this.getStudents();
        })
        .catch((e) => {
          alert(e);
          console.log(e);
        });
    },
    onDelete(id) {
      this.deleteStudent(id);
    },
    onEdit(data) {
      this.form = data;
      this.form.isEdit = true;
    },
    onFormSubmit(data) {
      if (data.isEdit) {
        this.editStudent(data);
      } else {
        this.createStudent(data);
      }
    },
  },
  created() {
    this.getStudents();
  },
};
</script>

<style scoped>
.main.container {
  margin-top: 60px;
}

thead tr th {
  background-color: rgb(36, 160, 129) !important;
}

.ui.inverted.dimmer {
  background-color: rgba(225, 255, 255, 0) !important;
}
</style>