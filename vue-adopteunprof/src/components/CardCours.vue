<template>
  <div class="all">
    <div class="course-entry">
      <div class="course-item-content h-100">
        <div class="course-front">
          <div class="course-thumbnail">
            <img
              src="https://futureofworking.com/wp-content/uploads/2021/03/math-teacher-interview-questions.jpg"
              class="attachment-course"
              srcset="@/assets/course01-1.jpg 1170w"
              sizes="(max-width: 1170px) 100vw, 1170px"
              width="1170"
              height="780"
            />
          </div>
          <div class="course-detail">
            <div class="course-meta">
              <div class="course-meta-title">
                <h6 class="course-title">{{ annonces.content }}</h6>
                <!-- course title -->
              </div>
            </div>

            <div class="course-meta-data">
              <div class="prof">
                <a>Professeur</a>
              </div>
              <div class="button">
                <button
                  v-on:click="Profil(annonces.professorID)"
                  type="button"
                  class="btn"
                >
                  <!--{{ professors.firstname }} {{ professors.lastname }}-->
                  {{ annonces.professor_name }}
                </button>
                <router-link to="/chat" class="btn-chat">
                  <i class="bi bi-chat-dots"></i>
                  <i class="bi bi-chat-dots-fill"></i>
                </router-link>
              </div>
              <br />
              <div class="matière">
                <a>Matière</a>
              </div>
              <div class="button">
                <p type="text" class="bt">
                  {{ annonces.matieres }}
                </p>
              </div>
              <br />
              <div class="bloc-price">
                <div class="price">{{ annonces.tarifs }} €</div>
                <router-link :to="`/paypal?id=${annonces.id}`">
                  <button type="button-reserver" class="btn-reserver">
                    Réserver
                  </button></router-link
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "CardCours",
  props: {
    professors: Object,
    annonces: Object,
  },

  components: {},
  methods: {
    Profil(profid) {
      console.log(profid);
      //ROUTING AVEC PARAMS
      this.$router.push({ name: "ProfProfil", params: { profID: profid } });
    },
    showannonces(id) {
      this.$router.push(`/paypal?id=${id}`);
    },
  },
};
</script>

<style scoped>
.all {
  /*display: flex;
  flex-wrap: wrap;
  box-sizing: border-box;
  position: relative;
  max-width: 1200px;
  align-items: center !important;
  justify-content: flex-start !important;
  margin-right: auto;
  margin-left: auto;*/
  width: 33.333333%;
  margin-bottom: 30px;
  padding-right: 15px;
  padding-left: 15px;
  box-sizing: border-box;
}

.course-entry {
  /*margin-bottom: 30px;
  flex: 0 0 33.333333%;
  max-width: 33.333333%;
  position: relative;
  width: 100%;
  min-height: 1px;
  padding-right: 15px;
  padding-left: 15px;
  box-sizing: border-box;*/
  min-height: 1px;
}

.course-item-content {
  height: 100% !important;
  position: relative;
  box-sizing: border-box;
}

.attachment-course {
  border-radius: 5px 5px 0 0;
  max-width: 100%;
  height: auto;
  vertical-align: middle;
  border-style: none;
  box-sizing: border-box;
}

.course-detail {
  padding: 23px 30px 25px;
  border: 2px solid #d8efdb;
  border-bottom-right-radius: 0.25rem !important;
  border-bottom-left-radius: 0.25rem !important;
}

.course-meta {
  margin-bottom: 17px;
}

h6 {
  line-height: 30px;
  margin-bottom: 16px;
  color: #222a35;
  margin-top: 0;
  font-size: 18px;
  font-weight: 600;
  word-break: break-word;
  font-family: "poppins", sans-serif;
}

.prof {
  line-height: 30px;
  color: #5caf01;
  font-size: 14px;
  font-weight: 600;
  font-family: "poppins", sans-serif;
}

.matière {
  line-height: 30px;
  color: #5caf01;
  font-size: 14px;
  font-weight: 600;
  font-family: "poppins", sans-serif;
  border-top: 2px solid #d8efdb;
  width: 300px;
  padding-top: 15px;
}

.btn {
  border-radius: 5px;
  padding: 5px 6px;
  margin: 0 4px 4px 0;
  text-align: center;
  font-size: 16px !important;
  line-height: 1;
  color: #222a35;
  font-weight: 400;
  border: 2px solid #d8efdb;
  background-color: transparent;
  margin-left: 120px;
  margin-top: -30px;
  float: left;
  cursor: pointer;
}

.btn:hover {
  background-color: #5caf01;
  border: 2px solid #5caf01;
  color: white;
}

.bloc-price {
  margin-top: 40px;
}
.price {
  color: #5caf01;
  font-size: 20px;
  font-weight: 600;
  font-family: "poppins", sans-serif;
}

.btn-reserver {
  background-color: #5caf01;
  border: 2px solid #5caf01;
  color: white;
  padding: 10px 30px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  cursor: pointer;
  border-radius: 5px;
  position: absolute;
  transition: all 300ms ease-out;
  margin-left: 150px;
  margin-top: -35px;
}
.btn-reserver:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
}
.btn-chat {
  color: #5caf01;
  font-size: 25px;
  margin-left: 10px;
  margin-top: -30px;
  float: left;
}

.btn-chat:hover .bi-chat-dots,
.btn-chat .bi-chat-dots-fill {
  display: none;
}
.btn-chat:hover .bi-chat-dots-fill {
  display: inline;
}
</style>
