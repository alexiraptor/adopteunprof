<template>
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css"
  />
  <div id="nav">
    <div class="ui main container">
      <Form :form="form" @onFormSubmit="onFormSubmit" />

      <ProfessorList
        :professors="professors"
        @onDelete="onDelete"
        @onEdit="onEdit"
      />
    </div>
  </div>
</template>

<script>
import axios from "axios";
import Form from "../components/crud/Form.vue";
import ProfessorList from "../components/crud/ProfessorList.vue";
import Loader from "../components/crud/Loader.vue";

export default {
  name: "CrudProfessor",
  components: {
    Form,
    ProfessorList,
    Loader,
  },
  data() {
    return {
      url: "http://localhost:8000/api/professor",
      professors: [],
      form: {
        userID: "",
        firstname: "",
        lastname: "",
        age: "",
        adresse: "",
        phone: "",
        matieres: "",
        description: "",
        information_bancaire: "",
        annoncesID: "",
        cours: "",
        notes: "",
        commentaires: "",
        historique_cours: "",
        historique_paiement: "",
        archives_conversation: "",

        isEdit: false,
      },
      loader: false,
    };
  },

  methods: {
    getProfessors() {
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
          this.professors = data.data.professors;
          console.log(data.data);
          console.log(data.data.professors);

          this.loader = false;
        });
    },
    deleteProfessor(id) {
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
          this.getProfessors();
        })
        .catch((e) => {
          alert(e);
        });
    },
    createProfessor(data) {
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
            age: data.age,
            adresse: data.adresse,
            phone: data.phone,
            matieres: data.matieres,
            description: data.description,
            information_bancaire: data.information_bancaire,
            annoncesID: data.annoncesID,
            cours: data.cours,
            notes: data.notes,
            commentaires: data.commentaires,
            historique_cours: data.historique_cours,
            historique_paiement: data.historique_paiement,
            archives_conversation: data.archives_conversation,
          },
        })
        .then(() => {
          console.log(data.userID);
          this.getProfessors();
        })
        .catch((e) => {
          console.log(e.response.data);
          console.log(e.response.status);
          console.log(e.response.headers);
        });
    },

    editProfessor(data) {
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
            age: data.age,
            adresse: data.adresse,
            phone: data.phone,
            matieres: data.matieres,
            description: data.description,
            information_bancaire: data.information_bancaire,
            annoncesID: data.annoncesID,
            cours: data.cours,
            notes: data.notes,
            commentaires: data.commentaires,
            historique_cours: data.historique_cours,
            historique_paiement: data.historique_paiement,
            archives_conversation: data.archives_conversation,
          },
        })
        .then(() => {
          console.log(data.userID);
          this.getProfessors();
        })
        .catch((e) => {
          alert(e);
          console.log(e);
        });
    },
    onDelete(id) {
      this.deleteProfessor(id);
    },
    onEdit(data) {
      this.form = data;
      this.form.isEdit = true;
    },
    onFormSubmit(data) {
      if (data.isEdit) {
        this.editProfessor(data);
      } else {
        this.createProfessor(data);
      }
    },
  },
  created() {
    this.getProfessors();
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
