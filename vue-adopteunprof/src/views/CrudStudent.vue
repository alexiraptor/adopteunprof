<template>
  <div>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css"
    />
    <div id="nav">
      <button class="redirect_button" type="button" v-on:click="Router('user')">
        CRUD USER
      </button>
      <button class="redirect_button" type="button" v-on:click="Router('prof')">
        CRUD PROFESSEUR
      </button>
      <button
        class="redirect_button"
        type="button"
        v-on:click="Router('annonce')"
      >
        CRUD ANNONCE
      </button>
      <div>
        <StudentList
          :students="students"
          @onDelete="onDelete"
          @onEdit="onEdit"
        />
        <br />
      </div>

      <div class="formS">
        <MyForm :form="form" @onFormSubmit="onFormSubmit" />
      </div>
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
      url: "http://89.234.182.164:8000/api/student",
      students: [],
      form: {
        userID: "",
        firstname: "",
        lastname: "",
        avatar: "",
        age: "",
        adresse: "",
        phone: "",
        description: "",
        information_bancaire: "",
        cours: "",
        hobby: "",
        commentaires: "",
        historique_cours: "",
        historique_paiement: "",
        archives_conversation: "",
        isEdit: false,
      },
      loader: false,
    };
  },
  created() {
    if (this.$cookies.get("admintoken") != "admin") {
      console.log("pas admin");
      this.$router.push({
        name: "Login",
        params: {
          loginerrormessage:
            "T'as cru t'étais chez oit mon gars ? Ceci est un espace réservé aux VIP/admins",
        },
      });
    } else {
      console.log("admin");
      this.getStudents();
    }
  },
  methods: {
    Router(link) {
      if (link == "user") this.$router.push({ path: "/crudusers" });
      else if (link == "stud") this.$router.push({ path: "/crudstudent" });
      else if (link == "prof") this.$router.push({ path: "/crudprofessor" });
      else if (link == "annonce") this.$router.push({ path: "/crudannonces" });
    },
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
            avatar: data.avatar,
            age: data.age,
            adresse: data.adresse,
            phone: data.phone,
            description: data.description,
            information_bancaire: data.information_bancaire,
            cours: data.cours,
            hobby: data.hobby,
            commentaires: data.commentaires,
            historique_cours: data.historique_cours,
            historique_paiement: data.historique_paiement,
            archives_conversation: data.archives_conversation,
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
            avatar: data.avatar,
            age: data.age,
            adresse: data.adresse,
            phone: data.phone,
            description: data.description,
            information_bancaire: data.information_bancaire,
            cours: data.cours,
            hobby: data.hobby,
            commentaires: data.commentaires,
            historique_cours: data.historique_cours,
            historique_paiement: data.historique_paiement,
            archives_conversation: data.archives_conversation,
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
};
</script>

<style scoped>
#nav {
  margin-top: 40px;
}

thead tr th {
  background-color: rgb(36, 160, 129) !important;
}

.ui.inverted.dimmer {
  background-color: rgba(225, 255, 255, 0) !important;
}

.formS {
  margin-top: 30px;
  text-align: center;
}
</style>
