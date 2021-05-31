<template>
  <div class="myform">
    <form class="ui form">
      <div class="fields">
        <div class="four wide field">
          <input
            type="text"
            name="professor_name"
            placeholder="Nom"
            @change="handleChange"
            :value="form.professor_name"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="matieres"
            placeholder="Matières"
            @change="handleChange"
            :value="form.matieres"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="content"
            placeholder="Contenu"
            @change="handleChange"
            :value="form.content"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="tarifs"
            placeholder="Tarifs"
            @change="handleChange"
            :value="form.tarifs"
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
  name: "FormA",
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
      if (document.getElementsByName("professor_name")[0].value === "") {
        alert("Entrez un nom");
        return false;
      }

      if (document.getElementsByName("matieres")[0].value === "") {
        alert("Entrez une matière");
        return false;
      }

      if (document.getElementsByName("content")[0].value === "") {
        alert("Entrez un contenu");
        return false;
      }

      if (document.getElementsByName("tarifs")[0].value === "") {
        alert("Entrez un tarif");
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

<style scoped></style>
