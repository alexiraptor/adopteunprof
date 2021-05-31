<template>
  <div id="container">
    <paypal-checkout />

    <div id="paypal-button"></div>
  </div>
</template>

<script>
import Calendar from "./Calendar.vue";
export default {
  components: {
    Calendar,
  },
  mounted() {
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
};
</script>