import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import Register from '../components/auth/Register.vue'
import Login from '../components/auth/Login.vue'
import Redirect from '../components/auth/Redirect.vue'
import Logout from '../components/auth/Logout.vue'
import Profile from '../components/auth/Profile.vue'
import Paypal from '../components/Paypal.vue'
import CardCours from '../components/CardCours.vue'
import CrudStudent from '../views/CrudStudent.vue'
import FBregister from '../components/auth/FBregister.vue'
import CrudProfessor from '../views/CrudProfessor.vue'
import CrudAnnonce from '../views/CrudAnnonce.vue'
import PersonalSpace from '../components/PersonalSpace.vue'
import CrudUser from '../views/CrudUser.vue'
import AddAnnonces from '../components/AddAnnonces.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/register',
    name: 'Register',
    component: Register
  },
  {
    path: '/redirect',
    name: 'Redirect',
    component: Redirect
  },
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/logout',
    name: 'Logout',
    component: Logout
  },
  {
    path: '/profile',
    name: 'Profile',
    component: Profile
  },
  {
    path:'/paypal',
    name: 'PAYPAL',
    component: Paypal
  },
  {
    path:'/cardcours',
    name: 'CardCours',
    component: CardCours
  },
  {
    path: "/crudstudent",
    name: "CrudStudent",
    component: CrudStudent
  },
  {
    path: "/fbregister",
    name: "FBregister",
    component: FBregister
  },
  {
    path: "/crudprofessor",
    name: "CrudProfessor",
    component: CrudProfessor
  },
  {
    path: "/crudannonces",
    name: "CrudAnnonce",
    component: CrudAnnonce
  },
  {
    path: "/personalspace",
    name: "PersonalSpace",
    component: PersonalSpace
  },
  {
    path: "/crudusers",
    name: "CrudUser",
    component: CrudUser
  },
  {
    path: "/addannonces",
    name: "Addannonce",
    component: AddAnnonces
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
