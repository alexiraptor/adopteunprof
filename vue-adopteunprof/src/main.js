import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import VueCookies from 'vue3-cookies'
import Vue from 'vue'

import 'bootstrap/dist/css/bootstrap.min.css'

createApp(App).use(VueCookies).use(store).use(router).mount('#app')
