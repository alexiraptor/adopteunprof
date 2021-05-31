<template>
  <div>
    <v-facebook-login
      v-model="model"
      @sdk-init="handleSdkInit"
      @login="getLoginStatus"
      app-id="745250876152347"
    />
    <!-- <button v-if="scope.logout && model.connected" @click="scope.logout">
      Logout
    </button> -->
    <!-- <button @click="getLoginStatus">Get Status</button> -->
  </div>
</template>

<script>
import VFacebookLogin from "vue-facebook-login-component-next";

export default {
  name: "FacebookLogin",
  components: {
    VFacebookLogin,
  },
  data: () => ({
    FB: {},
    model: {},
    scope: {},
    status: "",
  }),
  created() {},
  methods: {
    handleSdkInit({ FB, scope }) {
      this.FB = FB;
      this.scope = scope;
    },
    async getLoginStatus() {
      await FB.getLoginStatus((response) => {
        console.log(response);
        if (response.status == "connected") this.status = response.status;
      });
      if (this.status == "connected") {
        FB.api("/me", "GET", { fields: "id,name,email" }, (response) => {
          this.$cookies.set("FBid", response.id);
          this.$cookies.set("FBname", response.name);
          this.$cookies.set("FBmail", response.email);
          console.log("C GOOD");
          FB.api("/me/permissions", "delete", null, () => FB.logout());
          this.$router.push({ path: "/fbregister" });
        });
      }
    },
  },
};
</script>
