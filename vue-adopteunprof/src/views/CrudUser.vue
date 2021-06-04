<template>
  <div>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css"
    />
    <div id="nav">
      <button class="redirect_button" type="button" v-on:click="Router('stud')">
        CRUD ETUDIANT
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
      <div class="ui main container">
        <FormU :form="form" @onFormSubmit="onFormSubmit" />

        <UserList :users="users" @onDelete="onDelete" @onEdit="onEdit" />
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import FormU from "../components/crud/FormU.vue";
import UserList from "../components/crud/UserList.vue";
import Loader from "../components/crud/Loader.vue";

export default {
  name: "CrudUser",
  components: {
    FormU,
    UserList,
    Loader,
  },
  data() {
    return {
      url: "http://89.234.182.164:8000/api/users",
      users: [],
      form: {
        name: "",
        email: "",
        password: "",
        facebookID: "",
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
      this.getUsers();
    }
  },
  methods: {
    Router(link) {
      if (link == "user") this.$router.push({ path: "/crudusers" });
      else if (link == "stud") this.$router.push({ path: "/crudstudent" });
      else if (link == "prof") this.$router.push({ path: "/crudprofessor" });
      else if (link == "annonce") this.$router.push({ path: "/crudannonces" });
    },
    getUsers() {
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
          this.users = data.data;
          console.log(data.data.users);
          console.log(data.data);

          this.loader = false;
        });
    },
    deleteUser(id) {
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
          this.getUsers();
        })
        .catch((e) => {
          alert(e);
        });
    },
    createUser(data) {
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
            name: data.name,
            email: data.email,
            password: data.password,
            facebookID: data.facebookID,
          },
        })
        .then(() => {
          console.log(data.name);
          this.getUsers();
        })
        .catch((e) => {
          console.log(e.response.data);
          console.log(e.response.status);
          console.log(e.response.headers);
        });
    },

    editUser(data) {
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
            userID: data.name,
            firstname: data.email,
            lastname: data.password,
            facebook: data.facebookID,
          },
        })
        .then(() => {
          console.log(data.name);
          this.getUsers();
        })
        .catch((e) => {
          alert(e);
          console.log(e);
        });
    },
    onDelete(id) {
      this.deleteUser(id);
    },
    onEdit(data) {
      this.form = data;
      this.form.isEdit = true;
    },
    onFormSubmit(data) {
      if (data.isEdit) {
        this.editUser(data);
      } else {
        this.createUser(data);
      }
    },
  },
};
</script>

<style>
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
