<template>
  <div class="myform">
    <form class="ui form">
      <div class="fields">
        <div class="four wide field">
          <input
            type="text"
            name="userID"
            placeholder="user ID"
            @change="handleChange"
            :value="form.userID"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="firstname"
            placeholder="First name"
            @change="handleChange"
            :value="form.firstname"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="lastname"
            placeholder="Last name"
            @change="handleChange"
            :value="form.lastname"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="age"
            placeholder="Age"
            @change="handleChange"
            :value="form.age"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="adresse"
            placeholder="Adresse"
            @change="handleChange"
            :value="form.adresse"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="phone"
            placeholder="Phone"
            @change="handleChange"
            :value="form.phone"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="matières"
            placeholder="Matières"
            @change="handleChange"
            :value="form.matieres"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="description"
            placeholder="Description"
            @change="handleChange"
            :value="form.description"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="information_bancaire"
            placeholder="Informations bancaires"
            @change="handleChange"
            :value="form.information_bancaire"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="annoncesID"
            placeholder="Annonces ID"
            @change="handleChange"
            :value="form.annoncesID"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="cours"
            placeholder="Cours"
            @change="handleChange"
            :value="form.cours"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="notes"
            placeholder="Notes"
            @change="handleChange"
            :value="form.notes"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="commentaires"
            placeholder="Commentaires"
            @change="handleChange"
            :value="form.commentaires"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="historique_cours"
            placeholder="Historique de cours"
            @change="handleChange"
            :value="form.historique_cours"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="historique_paiement"
            placeholder="Historique de paiement"
            @change="handleChange"
            :value="form.historique_paiement"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="archives_conversation"
            placeholder="Archives de conversation"
            @change="handleChange"
            :value="form.archives_conversation"
          />
        </div>

        <div class="two wide field">
          <button :class="btnClass" @click="onFormSubmit">{{ btnName }}</button>
        </div>
      </div>
    </form>
  </div>
</template>

<script>
export default {
  name: "Form",
  data() {
    return {
      btnName: "SAVE",
      btnClass: "ui primary button submit-button",
    };
  },
  props: {
    form: {
      type: Object,
    },
  },
  methods: {
    handleChange(event) {
      const { name, value } = event.target;
      let form = this.form;
      form[name] = value;
      // this.form = form;
    },
    onFormSubmit(e) {
      // prevent form submit
      e.preventDefault();

      // form validation
      if (this.formValidation()) {
        // window.console.log("go go submit");
        this.$emit("onFormSubmit", this.form);

        // change the button to save
        this.btnName = "SAVED";
        this.btnClass = "ui primary button submit-button";
      }
    },
    formValidation() {
      //name
      if (document.getElementsByName("firstname")[0].value === "") {
        alert("Entrez un prénom");
        return false;
      }

      if (document.getElementsByName("lastname")[0].value === "") {
        alert("Entrez un nom");
        return false;
      }

      //email
      if (document.getElementsByName("age")[0].value === "") {
        alert("Entrez un âge");
        return false;
      }

      if (document.getElementsByName("adresse")[0].value === "") {
        alert("Entrez une adresse");
        return false;
      }

      if (document.getElementsByName("phone")[0].value === "") {
        alert("Entrez un numéro");
        return false;
      }

      if (document.getElementsByName("matières")[0].value === "") {
        alert("Entrez une matière");
        return false;
      }

      if (document.getElementsByName("description")[0].value === "") {
        alert("Entrez une description");
        return false;
      }

      if (document.getElementsByName("information_bancaire")[0].value === "") {
        alert("Entrez vos informations bancaires");
        return false;
      }

      return true;
    },
  }, //fin methods

  updated() {
    if (this.form.isEdit) {
      this.btnName = "Update";
      this.btnClass = "ui orange button submit-button";
    }
  },
};
</script>

<style scoped></style>
