<template>
  <div class="myform">
    <form class="ui form">
      <div class="fields">
        <div class="four wide field">
          <input
            type="text"
            name="name"
            placeholder="Name"
            @change="handleChange"
            :value="form.name"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="email"
            placeholder="Email"
            @change="handleChange"
            :value="form.email"
          />
        </div>

        <div class="four wide field">
          <input
            type="password"
            name="password"
            placeholder="Password"
            @change="handleChange"
            :value="form.password"
          />
        </div>

        <div class="four wide field">
          <input
            type="text"
            name="facebookID"
            placeholder="Identifiant Facebook"
            @change="handleChange"
            :value="form.facebookID"
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
  name: "FormU",
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
      if (document.getElementsByName("name")[0].value === "") {
        alert("Entrez un nom");
        return false;
      }

      if (document.getElementsByName("email")[0].value === "") {
        alert("Entrez un email");
        return false;
      }

      if (document.getElementsByName("password")[0].value === "") {
        alert("Entrez un mot de passe");
        return false;
      }

      if (document.getElementsByName("facebookID")[0].value === "") {
        alert("Entrez un identifiant facebook");
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