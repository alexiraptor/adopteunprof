<template>
  <div class="container">
    <div class="card">
      <div class="resaprof">
        <h4>Nom de prof:</h4>
        {{ annonce.professor_name }}
      </div>

      <div class="resacontent">
        <!-- <p class="text-justify-center" id="wrapper"> -->
        <h4>Content:</h4>
        {{ annonce.content }}
        <!-- </p> -->
      </div>
      <div class="resamatiere">
        <h4>Matiere:</h4>
        {{ annonce.matieres }}
      </div>
      <div class="resatarif">
        <h4>Tarif:</h4>
        {{ annonce.tarifs }}
      </div>
      <div id="paypal-button"></div>
      <paypal-checkout />
      <div>Choississez votre date:<Calendar /></div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import Calendar from "./Calendar.vue";
export default {
  components: {
    Calendar,
  },
  data() {
    return {
      annonce: {},
    };
  },
  methods: {
    paypalInit() {
      paypal.Button.render(
        {
          env: "sandbox",
          client: {
            sandbox:
              "AZ9PftjmxdnlvoVqsdtAeUu29fzEXsEtZDMLtdfLKRKtrFko7XWEGIV3dDcGRWI9CdHa8XmQwXu2r9zu",
            production:
              "EFNo9sAyqiOmnlRHsAdXiGBf6ULysEIfKUVsn58Pq6ilfGHVFn03iVvbWtfiht-irdJD_df1MECvmBC2",
          },
          locale: "en_US",
          style: {
            size: "medium",
            color: "gold",
            shape: "pill",
          },
          commit: true,
          payment: function (data, actions) {
            return actions.payment.create({
              transactions: [
                {
                  amount: {
                    total: "11",
                    currency: "EUR",
                  },
                },
              ],
            });
          },
          onAuthorize: function (data, actions) {
            return actions.payment.execute().then(function () {
              window.alert("Thank you for your purchase!");
            });
          },
        },
        "#paypal-button"
      );
      console.log("notification mounted");
    },
    getAnnonce() {
      var token = this.$cookies.get("authtoken");
      // console.log("THE TOKEN IS");
      // console.log(token);
      // console.log(this.$route.query.id);
      //let id = this.$route.query.id;

      axios
        .get(`http://89.234.182.164:8000/api/annonces/${this.$route.query.id}`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        })
        .then((res) => {
          console.log(res.data);
          this.annonce = res.data.annonce;
          //this.paypalInit();
        })
        .catch((e) => {
          console.log("ERREURUUUUU");
          console.log(e);
        });
    },
  },
  //info des annonces
  created() {
    console.log(this.$route.query);
    this.getAnnonce();
  },
  // pour paypal
  mounted() {
    this.paypalInit();
  },
};
</script>
<style scoped>
.container {
  display: center;
  border: none;
  border-color: darkgreen;
  padding: 23px 30px 25px;
  border-top: 2px solid #d8efdb;
  border: 2px solid #d8efdb;
  font-family: "poppins", sans-serif;
  color: #5caf01;
  font-size: 16px;
}
</style>