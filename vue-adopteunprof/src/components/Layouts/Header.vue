<template>
  <div class="page_header_wrapper" style="height: 75px">
    <header class="page_header">
      <div class="container">
        <div class="align-items-center">
          <img
            :src="require('@/assets/logo-adopte-un-prof.png')"
            class="logo"
          />
          <div class="col-xl-7 d-xl-block">
            <nav class="top-nav justify-content-start" style="">
              <ul
                id="menu-main-manu"
                class="sf-menu nav sf-js-enabled sf-arrows"
                style="touch-action: pan-y"
              >
                <li
                  id="menu-item-3486"
                  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-498 current_page_item menu-item-3486 active"
                >
                  <router-link to="/">
                    <a>Accueil</a>
                  </router-link>
                </li>
                <li
                  id="menu-item-692"
                  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-692"
                >
                  <router-link to="/listecours">
                    <a>Liste des cours</a>
                  </router-link>
                </li>
                <li
                  id="menu-item-492"
                  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-492"
                >
                  <a href="#">Professeurs</a>
                </li>
                <!-- <li
                  id="menu-item-413"
                  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-413"
                >
                  <a href="#">Nous contacter</a>
                </li> -->
              </ul>
            </nav>
          </div>
          <div class="col-3 col-lg-1 d-none d-xl-flex justify-content-lg-end">
            <router-link to="/login">
              <a href="#" class="login_modal_window modal_window">
                <i class="bi bi-person-fill"></i>Login</a
              >
            </router-link>

            <router-link to="/register">
              <a href="#" class="login_modal_window modal_window">
                <i class="bi bi-person-fill"></i>Register</a
              >
            </router-link>

            <a
              v-on:click="logout"
              href="#"
              class="login_modal_window modal_window"
            >
              <i class="bi bi-person-fill"></i>Logout</a
            >
          </div>
        </div>
      </div>
    </header>
  </div>
</template>

<script>
export default {
  methods: {
    logout() {
      localStorage.clear();
      this.$cookies.remove("userID");
      this.$cookies.remove("authtoken");
      this.$cookies.remove("redirect");
      this.$cookies.remove("profID");
      this.$cookies.remove("FBid");
      this.$cookies.remove("FBname");
      this.$cookies.remove("studentID");
      console.log("LOGGED OUT");
      // this.logouterrormessage = "You're logged out !";
      this.$router.push({ path: "/" });
    },
  },
};
</script>

<style scoped>
.page_header_wrapper {
  background-color: #222a35;
  width: 100%;
}

.container {
  max-width: 1200px;
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
  height: 75px;
}

.align-items-center {
  align-items: center !important;
  display: flex;
  flex-wrap: wrap;
  margin-right: -15px;
  margin-left: -15px;
  box-sizing: border-box;
  height: 75px;
}

.logo {
  flex: 0 0 20%;
  max-width: 20%;
  position: relative;
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  display: inline-block;
  height: auto;
  margin-top: -10px;
}

.col-xl-7 {
  flex: 0 0 58.333333%;
  max-width: 58.333333%;
  display: block !important;
  position: relative;
  width: 100%;
  min-height: 1px;
  height: 75px;
  padding-right: 15px;
  padding-left: 15px;
}

.top-nav {
  position: relative;
  height: 75px;
  flex-wrap: nowrap;
  display: flex;
  align-items: center;
  justify-content: flex-start !important;
}

ul:last-child,
ol:last-child,
p:last-child {
  margin: 0;
  padding: 0;
  list-style: none;
  display: block;
}

.sf-menu > li {
  display: inline-block;
  position: relative;
  white-space: nowrap;
  font-weight: 400;
  line-height: 14px;
  padding-top: 39px;
  padding-bottom: 38px;
  padding-right: 0;
  padding-left: 0;
  margin: 0 15px;
  transition-duration: 0.15s;
}

li > a {
  color: #ffffff;
  padding-left: 15px;
  list-style: none;
  white-space: nowrap;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 14px;
  padding-right: 0;
  padding-left: 0;
  margin: 0 15px;
  text-decoration: none;
  transition: all 300ms ease-out;
}

li > a:hover {
  color: #5caf01;
}

.justify-content-lg-end {
  justify-content: flex-end !important;
}

.d-xl-flex {
  display: flex !important;
}

.col-lg-1 {
  flex: 0 0 8.333333%;
  max-width: 8.333333%;
}

.col-3 {
  position: relative;
  width: 100%;
  min-height: 1px;
  padding-right: 15px;
  padding-left: 15px;
}

.login_modal_window {
  color: #ffffff;
  list-style: none;
  white-space: nowrap;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 14px;
  padding-right: 0;
  padding-left: 0;
  margin: 0 5px;
  text-decoration: none;
  transition: all 300ms ease-out;
}

a {
  text-decoration: none;
}

.bi-person-fill {
  margin-right: 0.5rem !important;
  font-size: inherit;
  text-rendering: auto;
  color: #ffffff;
  transition: all 300ms ease-out;
}

.login_modal_window:hover,
.bi-person-fill:hover {
  color: #5caf01;
}
</style>
