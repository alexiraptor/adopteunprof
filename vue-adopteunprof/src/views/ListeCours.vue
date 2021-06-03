<template>
  <div class="liste-cours">
    <div class="cours-dispo">
      <h6 class="dispo">Cours disponibles</h6>
      <div class="card">
        <div class="card2">
          <CardCours
            v-for="annonce in annonces"
            v-bind:annonces="annonce"
            v-bind:key="annonce"
          />
        </div>
        <Pagination
          @update:modelPage="updatePage"
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
import Pagination from "@/components/Pagination.vue";

import axios from "axios";
export default {
  name: "ListeCours",
  components: {
    CardCours,
    Pagination,
  },
  props: {
    sorting: {
      type: String,
      required: false,
      default: "",
    },
  },

  data() {
    return {
      listecours: [],

      annonces: [],
      productsPerPage: 12,
      page: 1,
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
        region: this.regionId,
        category: this.categoryId,
        min_price: this.minPrice,
        max_price: this.maxPrice,
        search: this.searchTerm,
        sorting: this.sorting,
      };
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
    },
  },
  watch: {
    filters() {
      // send new GET request to API with new filters every time filters change
      this.$store.dispatch("getFilteredProducts", {
        filters: this.filters,
        offset: (this.page - 1) * this.productsPerPage,
        limit: this.productsPerPage,
      });
      this.$store.dispatch("getMatchedProductsNumber", this.filters);
    },

    page() {
      // get corresponding paginated set of matched products when changing page
      this.$store.dispatch("getFilteredProducts", {
        filters: this.filters,
        offset: (this.page - 1) * this.productsPerPage,
        limit: this.productsPerPage,
      });
    },

    lengthMatchedProducts() {
      // at every new total of matched products go back to page 1
      this.page = 1;
    },
  },
  created() {
    var token = this.$cookies.get("authtoken");
    console.log(token);
    axios
      .get("http://89.234.182.164:8000/api/annonces", {
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
.dispo {
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
.card {
  border: transparent;
  margin-top: 60px;
}
.card2 {
  width: 1200px;
  margin-right: auto;
  margin-left: auto;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-between;
}
</style>