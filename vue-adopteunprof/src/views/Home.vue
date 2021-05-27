<template>
  <div class="home">
    <div class="carrousel">
      <img :src="require('@/assets/background-home.jpg')" class="bg" />
      <div class="apprentissage">
        <a>Apprentissage en ligne</a>
      </div>
      <div class="milliers">
        <a>Des milliers de cours</a>
        <br />
        <a>Des dizaines d'experts</a>
      </div>
      <div class="trouvez">
        <a>Trouvez dès maintenant votre cours</a>
      </div>
      <div class="search">
        <i class="bi bi-search"></i>
        <input
          type="search"
          id="searchfield"
          name="searchfield"
          data-stylerecorder="true"
          style="
            text-align: left;
            line-height: 25px;
            letter-spacing: 0px;
            font-weight: 400;
            border: 2px solid #ffffff;
            padding: 9px 28px 9px 40px;
            border-radius: 5px;
            background-color: transparent !important;
            color: #ffffff;
            width: 400px;
          "
        />
      </div>
      <div class="button-search">
        <button type="button" class="btn-success">Rechercher</button>
      </div>
      <div class="button-category">
        <button type="button" class="btn-physique">Physique</button>
        <img :src="require('@/assets/icon-physic.png')" class="icon-physic" />
        <button type="button" class="btn-math">Math</button>
        <img :src="require('@/assets/icon-math.png')" class="icon-math" />
        <button type="button" class="btn-art">Dessin</button>
        <img :src="require('@/assets/icon-art.png')" class="icon-art" />
        <button type="button" class="btn-music">Musique</button>
        <img :src="require('@/assets/icon-music.png')" class="icon-music" />
        <button type="button" class="btn-it">Informatique</button>
        <img
          :src="require('@/assets/icon-computer.png')"
          class="icon-computer"
        />
        <button type="button" class="btn-eco">Economie</button>
        <img :src="require('@/assets/icon-economy.png')" class="icon-economy" />
        <button type="button" class="btn-geo">Géographie</button>
        <img
          :src="require('@/assets/icon-geography.png')"
          class="icon-geography"
        />
        <button type="button" class="btn-bio">Biologie</button>
        <img :src="require('@/assets/icon-biology.png')" class="icon-biology" />
        <button type="button" class="btn-chimie">Chimie</button>
        <img
          :src="require('@/assets/icon-chemistry.png')"
          class="icon-chemistry"
        />
      </div>
    </div>

    <div class="bande-verte">
      <img :src="require('@/assets/icon-teacher.png')" class="icon-teacher" />
      <a class="profs">1320 professeurs</a><br />
      <a class="lorem1">Lorem ipsum dolor si amet</a>
      <img :src="require('@/assets/icon-cours.png')" class="icon-cours" />
      <a class="cours">8237 cours disponibles</a><br />
      <a class="lorem2">Lorem ipsum dolor si amet</a>
      <img :src="require('@/assets/icon-pays.png')" class="icon-pays" />
      <a class="pays">5 langues différentes</a><br />
      <a class="lorem3">Lorem ipsum dolor si amet</a>
    </div>
    <div class="cours-populaires">
      <h6 class="pop">Cours populaires</h6>

      <div class="card">
        <div class="card2">
          <!--<CardCours
            v-for="professor in professors"
            v-bind:professors="professor"
            v-bind:key="professor"
          />-->
                    <CardCours
            v-for="annonce in annonces"
            v-bind:annonces="annonce"
            v-bind:key="annonce"
          />
        </div>
        <Pagination
      @update:modelPage = 'updatePage'
      v-bind:modelPage="page"
      v-bind:modelItemsPerPage="productsPerPage"
      v-bind:modelNumberOfItems="lengthMatchedProducts"
      />
      </div>
    </div>
  </div>
</template>

<script>
import CardCours from "@/components/CardCours.vue";
import Pagination from '@/components/Pagination.vue'

import axios from "axios";
export default {
  name: "Home",
  components: {
    CardCours,
    Pagination
  },
  props: {
      sorting: {
      type: String,
      required: false,
      default: ''
    }, 
  },

  data() {
    return {
      home: [],

      annonces: [],
              productsPerPage: 12,
        page: 1
    };
  },
    methods: {
    updatePage(value) {
      this.page = value;
    },
  },
    computed: {
    filters() {
      // generate parameters object from filters passed as props for API request
      return {
        'region': this.regionId, 
        'category': this.categoryId, 
        'min_price': this.minPrice, 
        'max_price': this.maxPrice, 
        'search': this.searchTerm, 
        'sorting': this.sorting };
    },

    loading() {
      // are the products still loading ?
      return this.$store.state.loading;
    },

    products() {
      // return the products array from state which has been set as the API GET request result
      return this.$store.state.products;
    },

    lengthMatchedProducts() {
      // return the number of products matched with the criteria passed as parameters for pagination
      return this.$store.state.lengthMatchedProducts;
    }
  },
    watch: {
    filters() {
      // send new GET request to API with new filters every time filters change
      this.$store.dispatch("getFilteredProducts", { 'filters': this.filters, 'offset': (this.page - 1) * this.productsPerPage, 'limit': this.productsPerPage});
      this.$store.dispatch("getMatchedProductsNumber", this.filters);
    },

    page() {
      // get corresponding paginated set of matched products when changing page
      this.$store.dispatch("getFilteredProducts", { 'filters': this.filters, 'offset': (this.page - 1) * this.productsPerPage, 'limit': this.productsPerPage});
    },

    lengthMatchedProducts() {
      // at every new total of matched products go back to page 1
      this.page = 1;
    }
  },
  created() {
    var token = this.$cookies.get("authtoken");
    console.log(token);
    axios
      .get("http://localhost:8000/api/annonces", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((response) => {
        this.annonces = response.data.annonces;
        console.log(response.data);
      });
  },
};
</script>

<style scoped>
.bg {
  background-size: cover;
  background-position: 50% 50%;
  width: 100%;
  height: 100%;
  opacity: 1;
  transform: translate(0px);
  visibility: inherit;
  display: block;
  pointer-events: none;
  transform-origin: 50% 50% 0px;
}

.apprentissage {
  margin-left: 100px;
  margin-top: -750px;
  position: absolute;
  z-index: 6;
  font-family: "poppins", sans-serif;
  color: rgb(255, 255, 255);
  text-decoration: none;
  white-space: nowrap;
  text-align: inherit;
  line-height: 30px;
  letter-spacing: 0px;
  font-weight: 400;
  font-size: 20px;
  transform-origin: 50% 50% 0px;
  transform: translate(0px);
  opacity: 1;
  visibility: visible;
}

.milliers {
  margin-left: 100px;
  margin-top: -680px;
  position: absolute;
  z-index: 6;
  font-family: "poppins", sans-serif;
  color: rgb(255, 255, 255);
  text-decoration: none;
  white-space: nowrap;
  text-align: inherit;
  line-height: 60px;
  letter-spacing: -3px;
  font-weight: 700;
  font-size: 54px;
  transform-origin: 50% 50% 0px;
  transform: translate(0px);
  opacity: 1;
  visibility: visible;
}

.trouvez {
  margin-left: 100px;
  margin-top: -500px;
  position: absolute;
  z-index: 6;
  font-family: "poppins", sans-serif;
  color: rgb(255, 255, 255);
  text-decoration: none;
  white-space: nowrap;
  text-align: inherit;
  line-height: 30px;
  letter-spacing: 0px;
  font-weight: 400;
  font-size: 16px;
  transform-origin: 50% 50% 0px;
  transform: translate(0px);
  opacity: 1;
  visibility: visible;
}

.search {
  position: absolute;
  margin-top: -420px;
  margin-left: 100px;
}

.bi {
  color: white;
  position: absolute;
  margin-left: 13px;
  margin-top: 12px;
  font-size: 20px;
}

.btn-success {
  background-color: #5caf01;
  border: 2px solid #5caf01;
  color: white;
  padding: 12px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin-top: -422px;
  margin-left: 510px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}

.btn-success:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
}

.btn-physique {
  background-color: transparent;
  border: 2px solid #8b8b8b;
  color: white;
  width: 113px;
  height: 110px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  padding-top: 50px;
  font-size: 16px;
  margin-top: -700px;
  margin-left: 930px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}

.btn-physique:hover {
  background-color: white;
  border: 2px solid #ffffff;
  color: #575757;
}

.icon-physic {
  margin-top: -812px;
  margin-left: 905px;
  position: absolute;
  transform: scale(0.16);
}

.btn-math {
  background-color: transparent;
  border: 2px solid #8b8b8b;
  color: white;
  width: 113px;
  height: 110px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  padding-top: 50px;
  font-size: 16px;
  margin-top: -580px;
  margin-left: 930px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}

.btn-math:hover {
  background-color: white;
  border: 2px solid #ffffff;
  color: #575757;
}

.icon-math {
  margin-top: -692px;
  margin-left: 868px;
  position: absolute;
  transform: scale(0.15);
}

.btn-art {
  background-color: transparent;
  border: 2px solid #8b8b8b;
  color: white;
  width: 113px;
  height: 110px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  padding-top: 50px;
  font-size: 16px;
  margin-top: -460px;
  margin-left: 930px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}

.btn-art:hover {
  background-color: white;
  border: 2px solid #ffffff;
  color: #575757;
}

.icon-art {
  margin-top: -572px;
  margin-left: 815px;
  position: absolute;
  transform: scale(0.14);
}

.btn-music {
  background-color: transparent;
  border: 2px solid #8b8b8b;
  color: white;
  width: 113px;
  height: 110px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  padding-top: 50px;
  font-size: 16px;
  margin-top: -700px;
  margin-left: 1053px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}

.btn-music:hover {
  background-color: white;
  border: 2px solid #ffffff;
  color: #575757;
}

.icon-music {
  margin-top: -812px;
  margin-left: 972px;
  position: absolute;
  transform: scale(0.16);
}

.btn-it {
  background-color: transparent;
  border: 2px solid #8b8b8b;
  color: white;
  width: 113px;
  height: 110px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  padding-top: 50px;
  font-size: 16px;
  margin-top: -580px;
  margin-left: 1053px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}

.btn-it:hover {
  background-color: white;
  border: 2px solid #ffffff;
  color: #575757;
}

.icon-computer {
  margin-top: -645px;
  margin-left: 960px;
  position: absolute;
  transform: scale(0.17);
}

.btn-eco {
  background-color: transparent;
  border: 2px solid #8b8b8b;
  color: white;
  width: 113px;
  height: 110px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  padding-top: 50px;
  font-size: 16px;
  margin-top: -460px;
  margin-left: 1053px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}

.btn-eco:hover {
  background-color: white;
  border: 2px solid #ffffff;
  color: #575757;
}

.icon-economy {
  margin-top: -570px;
  margin-left: 968px;
  position: absolute;
  transform: scale(0.17);
}

.btn-geo {
  background-color: transparent;
  border: 2px solid #8b8b8b;
  color: white;
  width: 113px;
  height: 110px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  padding-top: 50px;
  font-size: 16px;
  margin-top: -700px;
  margin-left: 1176px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}

.btn-geo:hover {
  background-color: white;
  border: 2px solid #ffffff;
  color: #575757;
}

.icon-geography {
  margin-top: -811px;
  margin-left: 1111px;
  position: absolute;
  transform: scale(0.16);
}

.btn-bio {
  background-color: transparent;
  border: 2px solid #8b8b8b;
  color: white;
  width: 113px;
  height: 110px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  padding-top: 50px;
  font-size: 16px;
  margin-top: -580px;
  margin-left: 1176px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}

.btn-bio:hover {
  background-color: white;
  border: 2px solid #ffffff;
  color: #575757;
}

.icon-biology {
  margin-top: -688px;
  margin-left: 1062px;
  position: absolute;
  transform: scale(0.15);
}

.btn-chimie {
  background-color: transparent;
  border: 2px solid #8b8b8b;
  color: white;
  width: 113px;
  height: 110px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  padding-top: 50px;
  font-size: 16px;
  margin-top: -460px;
  margin-left: 1176px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
}

.btn-chimie:hover {
  background-color: white;
  border: 2px solid #ffffff;
  color: #575757;
}

.icon-chemistry {
  margin-top: -573px;
  margin-left: 1127px;
  position: absolute;
  transform: scale(0.17);
}

.bande-verte {
  width: 100%;
  height: 120px;
  margin-right: auto;
  margin-left: auto;
  background-color: #5caf01;
}

.icon-teacher {
  margin-top: -90px;
  margin-left: 10px;
  position: absolute;
  transform: scale(0.17);
}

.profs {
  margin-left: 200px;
  margin-top: 32px;
  position: absolute;
  z-index: 6;
  font-family: "poppins", sans-serif;
  color: rgb(255, 255, 255);
  text-decoration: none;
  white-space: nowrap;
  text-align: inherit;
  line-height: 30px;
  letter-spacing: 0px;
  font-weight: 600;
  font-size: 18px;
  transform-origin: 50% 50% 0px;
  transform: translate(0px);
  opacity: 1;
  visibility: visible;
}

.lorem1 {
  margin-left: 200px;
  margin-top: 37px;
  position: absolute;
  z-index: 6;
  font-family: "poppins", sans-serif;
  color: rgb(255, 255, 255);
  text-decoration: none;
  white-space: nowrap;
  text-align: inherit;
  line-height: 30px;
  letter-spacing: 0px;
  font-weight: 400;
  font-size: 16px;
  transform-origin: 50% 50% 0px;
  transform: translate(0px);
  opacity: 1;
  visibility: visible;
}

.icon-cours {
  margin-top: -78px;
  margin-left: 400px;
  position: absolute;
  transform: scale(0.2);
}

.cours {
  margin-left: 610px;
  margin-top: 12px;
  position: absolute;
  z-index: 6;
  font-family: "poppins", sans-serif;
  color: rgb(255, 255, 255);
  text-decoration: none;
  white-space: nowrap;
  text-align: inherit;
  line-height: 30px;
  letter-spacing: 0px;
  font-weight: 600;
  font-size: 18px;
  transform-origin: 50% 50% 0px;
  transform: translate(0px);
  opacity: 1;
  visibility: visible;
}

.lorem2 {
  margin-left: 610px;
  margin-top: 17px;
  position: absolute;
  z-index: 6;
  font-family: "poppins", sans-serif;
  color: rgb(255, 255, 255);
  text-decoration: none;
  white-space: nowrap;
  text-align: inherit;
  line-height: 30px;
  letter-spacing: 0px;
  font-weight: 400;
  font-size: 16px;
  transform-origin: 50% 50% 0px;
  transform: translate(0px);
  opacity: 1;
  visibility: visible;
}

.icon-pays {
  margin-top: -128px;
  margin-left: 815px;
  position: absolute;
  transform: scale(0.16);
}

.pays {
  margin-left: 1020px;
  margin-top: -4px;
  position: absolute;
  z-index: 6;
  font-family: "poppins", sans-serif;
  color: rgb(255, 255, 255);
  text-decoration: none;
  white-space: nowrap;
  text-align: inherit;
  line-height: 30px;
  letter-spacing: 0px;
  font-weight: 600;
  font-size: 18px;
  transform-origin: 50% 50% 0px;
  transform: translate(0px);
  opacity: 1;
  visibility: visible;
}

.lorem3 {
  margin-left: 1020px;
  margin-top: 0px;
  position: absolute;
  z-index: 6;
  font-family: "poppins", sans-serif;
  color: rgb(255, 255, 255);
  text-decoration: none;
  white-space: nowrap;
  text-align: inherit;
  line-height: 30px;
  letter-spacing: 0px;
  font-weight: 400;
  font-size: 16px;
  transform-origin: 50% 50% 0px;
  transform: translate(0px);
  opacity: 1;
  visibility: visible;
}

.pop {
  letter-spacing: -2px;
  text-align: center !important;
  font-size: 54px;
  font-weight: 700;
  line-height: 1;
  word-break: break-word;
  font-family: "poppins", sans-serif;
  color: #222a35;
  margin-top: 70px;
  margin-bottom: 40px;
}

</style>