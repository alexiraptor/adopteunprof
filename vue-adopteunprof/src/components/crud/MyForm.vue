<template>
  <div class="my-form">
    <form class="ui form">
      <div class="fields">
        <div class="four wide field">
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

        <div class="six wide field">
          <input
            type="email"
            name="email"
            placeholder="E-mail"
            @change="handleChange"
            :value="form.email"
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
      //name
      if (document.getElementsByName("firstname")[0].value === "") {
        alert("Enter First name");
        return false;
      }

      if (document.getElementsByName("lastname")[0].value === "") {
        alert("Enter Last name");
        return false;
      }

      //email
      if (document.getElementsByName("email")[0].value === "") {
        alert("Enter email");
        return false;
      }

      if (document.getElementsByName("age")[0].value === "") {
        alert("Enter age");
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

<style scoped>
</style>