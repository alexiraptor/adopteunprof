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
      <button class="redirect_button" type="button" v-on:click="Router('stud')">
        CRUD ETUDIANT
      </button>
      <button class="redirect_button" type="button" v-on:click="Router('prof')">
        CRUD PROFESSEUR
      </button>
      <!-- <button
        class="redirect_button"
        type="button"
        v-on:click="Router('annonce')"
      >
        CRUD ANNONCE
      </button> -->

      <div class="ui main container">
        <FormA :form="form" @onFormSubmit="onFormSubmit" />

        <AnnonceList
          :annonces="annonces"
          @onDelete="onDelete"
          @onEdit="onEdit"
        />
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import FormA from "../components/crud/FormA.vue";
import AnnonceList from "../components/crud/AnnonceList.vue";
import Loader from "../components/crud/Loader.vue";

export default {
  name: "CrudAnnonce",
  components: {
    FormA,
    AnnonceList,
    Loader,
  },
  data() {
    return {
      url: "http://89.234.182.164:8000/api/annonces",
      annonces: [],
      form: {
        professor_name: "",
        matieres: "",
        content: "",
        tarifs: "",
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
      this.getAnnonces();
    }
  },
  methods: {
    Router(link) {
      if (link == "user") this.$router.push({ path: "/crudusers" });
      else if (link == "stud") this.$router.push({ path: "/crudstudent" });
      else if (link == "prof") this.$router.push({ path: "/crudprofessor" });
      else if (link == "annonce") this.$router.push({ path: "/crudannonces" });
    },
    getAnnonces() {
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
          this.annonces = data.data.annonces;
          console.log(data.data);
          console.log(data.data.annonces);

          this.loader = false;
        });
    },
    deleteAnnonce(id) {
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
          this.getAnnonces();
        })
        .catch((e) => {
          alert(e);
        });
    },
    createAnnonce(data) {
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
            professor_name: data.professor_name,
            matieres: data.matieres,
            content: data.content,
            tarifs: data.tarifs,
          },
        })
        .then(() => {
          console.log(data.userID);
          this.getAnnonces();
        })
        .catch((e) => {
          console.log(e.response.data);
          console.log(e.response.status);
          console.log(e.response.headers);
        });
    },

    editAnnonce(data) {
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
            professor_name: data.professor_name,
            matieres: data.matieres,
            content: data.content,
            tarifs: data.tarifs,
          },
        })
        .then(() => {
          console.log(data.userID);
          this.getAnnonces();
        })
        .catch((e) => {
          alert(e);
          console.log(e);
        });
    },
    onDelete(id) {
      this.deleteAnnonce(id);
    },
    onEdit(data) {
      this.form = data;
      this.form.isEdit = true;
    },
    onFormSubmit(data) {
      if (data.isEdit) {
        this.editAnnonce(data);
      } else {
        this.createAnnonce(data);
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

#nav {
  text-align: center;
}

.redirect_button {
  margin: 5px;
}
</style>
