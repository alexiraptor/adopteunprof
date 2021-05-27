<template>
  <div id="nav">
    <Navigation v-if="$route.name !== 'NotFound'"/>
    <Header v-if="$route.name !== 'NotFound'"/>
  </div>
  <router-view/>
    <Footer v-if="$route.name !== 'NotFound'"/>
</template>

<script>
import Navigation from '@/components/Layouts/Navigation'
import Header from '@/components/Layouts/Header.vue'
import Footer from '@/components/Layouts/Footer.vue'

export default {
  name: 'App',
  components: {
    Header,
    Navigation,
    Footer
  }
}
</script>

<style scoped>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
