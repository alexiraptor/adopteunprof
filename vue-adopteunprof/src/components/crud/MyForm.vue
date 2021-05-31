<template>
  <div class="my-form">
    <form>
      <div class="fields">
        <div class="two wide field">
          <input
            type="text"
            name="userID"
            placeholder="Utilisateur ID"
            @change="handleChange"
            :value="form.userID"
          />
        </div>
        <div class="four wide field">
          <input
            type="text"
            name="firstname"
            placeholder="Prénom"
            @change="handleChange"
            :value="form.firstname"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="lastname"
            placeholder="Nom"
            @change="handleChange"
            :value="form.lastname"
          />
        </div>

        <div class="two wide field">
          <input
            type="text"
            name="avatar"
            placeholder="Avatar"
            @change="handleChange"
            :value="form.avatar"
          />
        </div>

        <div class="two wide field">
          <input
            type="text"
            name="age"
            placeholder="Âge"
            @change="handleChange"
            :value="form.age"
          />
        </div>

        <div class="two wide field">
          <input
            type="text"
            name="adresse"
            placeholder="Adresse"
            @change="handleChange"
            :value="form.adresse"
          />
        </div>

        <div class="two wide field">
          <input
            type="text"
            name="phone"
            placeholder="Téléphone"
            @change="handleChange"
            :value="form.phone"
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

        <div class="two wide field">
          <input
            type="text"
            name="information_bancaire"
            placeholder="Information bancaire"
            @change="handleChange"
            :value="form.information_bancaire"
          />
        </div>

        <div class="two wide field">
          <input
            type="text"
            name="cours"
            placeholder="Cours"
            @change="handleChange"
            :value="form.cours"
          />
        </div>

        <div class="two wide field">
          <input
            type="text"
            name="hobby"
            placeholder="Hobby"
            @change="handleChange"
            :value="form.hobby"
          />
        </div>

        <div class="two wide field">
          <input
            type="text"
            name="commentaires"
            placeholder="Commentaires"
            @change="handleChange"
            :value="form.commentaires"
          />
        </div>

        <div class="two wide field">
          <input
            type="text"
            name="historique_cours"
            placeholder="Historique des cours"
            @change="handleChange"
            :value="form.historique_cours"
          />
        </div>

        <div class="two wide field">
          <input
            type="text"
            name="historique_paiement"
            placeholder="Historique de paiement"
            @change="handleChange"
            :value="form.historique_paiement"
          />
        </div>

        <div class="two wide field">
          <input
            type="text"
            name="archives_conversation"
            placeholder="Archives de conversation"
            @change="handleChange"
            :value="form.archives_conversation"
          />
        </div>

        <div class="two wide field" style="margin-top: 30px">
          <button :class="btnClass" @click="onFormSubmit">{{ btnName }}</button>
        </div>
      </div>
    </form>
  </div>
</template>

<script>
export default {
  name: "MyForm",
  data() {
    return {
      btnName: "ENREGISTRER",
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
        this.btnName = "ENREGISTRÉ";
        this.btnClass = "ui primary button submit-button";
      }
    },
    formValidation() {
      if (document.getElementsByName("userID")[0].value === "") {
        alert("Entrez un identifiant");
        return false;
      }
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
      if (document.getElementsByName("avatar")[0].value === "") {
        alert("Entrez un avatar");
        return false;
      }

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

      if (document.getElementsByName("description")[0].value === "") {
        alert("Entrez une description");
        return false;
      }

      if (document.getElementsByName("information_bancaire")[0].value === "") {
        alert("Entrez vos informations bancaires");
        return false;
      }

      if (document.getElementsByName("cours")[0].value === "") {
        alert("Entrez un cours");
        return false;
      }

      return true;
    },
  }, //fin methods

  updated() {
    if (this.form.isEdit) {
      this.btnName = "Modifié";
      this.btnClass = "ui orange button submit-button";
    }
  },
};
</script>

<style scoped>
</style>