<template>
  <div class="container">
    <div class="card">
      <h3 class="paiement">Paiement</h3>
      <div class="resatarif">
        <h4 class="prix">Prix :</h4>
        <div class="tarifapi">{{ annonce.tarifs }}</div>
        <a class="devise">€</a>
      </div>
      <div class="descriptif">
        <div class="resaprof">
          <i class="bi bi-person-badge"></i>
          <h4 class="des">Nom du professeur :</h4>
          <div class="infoapi">{{ annonce.professor_name }}</div>
        </div>
        <div class="resacontent">
          <i class="bi bi-pencil-square"></i>
          <h4 class="des">Contenu :</h4>
          <div class="infoapi">{{ annonce.content }}</div>
        </div>
        <div class="resamatiere">
          <i class="bi bi-journal-bookmark"></i>
          <h4 class="des">Matière :</h4>
          <div class="infoapi">{{ annonce.matieres }}</div>
        </div>
      </div>
      <div class="calendar">Choississez votre date:<Calendar /></div>
      <div id="paypal-button"></div>
      <paypal-checkout class="paypal" />
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
              "ARqN0UD58JqC1BS6t5vXiPvICRqer9poNLmyurvn5HgdZWwcM7RaL6NceHjZwPklceUMwIhqN5XiMz7B",
            production:
              "EFzjQ9VpPgWzB_VksbXZIFFV7R779LJYWZIX2YMHh2wa4RkCKbWzNTGyEtqg0MJ3tOB9aYxKRVLDNK_O",
          },
          locale: "en_US",
          style: {
            size: "medium",
            color: "gold",
            shape: "pill",
          },
          commit: true,
          payment: (data, actions) => {
            return actions.payment.create({
              transactions: [
                {
                  amount: {
                    total: this.annonce.tarifs,
                    currency: "EUR",
                  },
                },
              ],
            });
          },
          onAuthorize: (data, actions) => {
            return actions.payment.execute().then(() => {
              window.alert("Merci pour votre achat!");
              this.$router.push("/");
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
  position: relative;
  width: 450px;
  min-height: 1px;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 300;
  line-height: 1.5;
  text-align: left;
  color: #768292;
  box-sizing: border-box;
  margin-right: auto;
  margin-left: auto;
}

.card {
  padding: 45px 50px 47px;
  margin-top: 50px;
  border: 1px solid #d8efdb;
  border-radius: 5px !important;
  box-sizing: border-box;
}
.paiement {
  font-size: 36px;
  color: #222a35;
  margin-bottom: 0;
  margin-top: 0;
  text-align: center !important;
  letter-spacing: 1px;
  font-weight: 700;
  line-height: 1;
  word-break: break-word;
  font-family: inherit;
}
.resatarif {
  font-family: "Poppins", sans-serif;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  font-size: 20px;
  line-height: 0.7;
  margin: 45px 0 10px;
  color: #2a323c;
  border-color: #2a323c;
  font-weight: 300;
  text-align: left;
}
.prix {
  color: #768292;
  font-family: "Poppins", sans-serif;
  font-size: 20px;
  line-height: 0.7;
  font-weight: 500;
  text-align: left;
  margin-right: 10px;
}
.tarifapi {
  font-weight: 900;
  font-size: 54px;
  margin-right: 3px;
  font-family: "Poppins", sans-serif;
  line-height: 0.7;
  color: #2a323c;
}
.devise {
  font-size: 30px;
  font-weight: 900;
  color: #768292;
  position: relative;
  bottom: 17px;
  right: 3px;
  font-family: "Poppins", sans-serif;
  line-height: 0.7;
}
.descriptif {
  margin-top: 36px;
  box-sizing: border-box;
  color: #768292;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 300;
  line-height: 1.5;
  text-align: left;
}
.resaprof {
  padding: 8px 0;
  color: #768292;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 300;
  line-height: 1.5;
  text-align: left;
}
.bi {
  margin-right: 14px;
  color: #222a35;
  border-color: #222a35;
  font-family: "icomoon" !important;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
}
.des {
  padding: 8px 0;
  color: #768292;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
  text-align: left;
  margin-left: 30px;
  margin-top: -30px;
  margin-bottom: 0px;
}
.infoapi {
  color: #2a323c;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
  text-align: left;
  display: inline-block;
  margin-left: 50px;
  margin-bottom: 20px;
}
#paypal-button {
  text-align: center;
  margin-top: 160px;
}
.calendar {
  margin-bottom: 50px;
  color: #768292;
  font-family: "poppins", sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.5;
}
</style>