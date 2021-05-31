<template>
  <div>
    <div class="container">
      <div class="row">
        <div class="col-sm-5 col-md-6 col-12 pb-4">
          <h1>Comments</h1>
          <div class="comment mt-4 text-justify float-left">
            <img
              src="https://i.imgur.com/yTFUilP.jpg"
              alt=""
              class="rounded-circle"
              width="40"
              height="40"
            />
            <h4>abc</h4>
            <span>{{ comments.created_at }}</span>
            <br />
            <p>
              {{ comments.comment }}
            </p>
          </div>
          <div class="text-justify darker mt-4 float-right">
            <img
              src="https://i.imgur.com/CFpa3nK.jpg"
              alt=""
              class="rounded-circle"
              width="40"
              height="40"
            />
            <h4>Rob Simpson</h4>
            <span>- 20 October, 2018</span> <br />
            <p>
              Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Accusamus numquam assumenda hic aliquam vero sequi velit molestias
              doloremque molestiae dicta?
            </p>
          </div>
          <div class="comment mt-4 text-justify">
            <img
              src="https://i.imgur.com/yTFUilP.jpg"
              alt=""
              class="rounded-circle"
              width="40"
              height="40"
            />
            <h4>Jhon Doe</h4>
            <span>- 20 October, 2018</span> <br />
            <p>
              Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Accusamus numquam assumenda hic aliquam vero sequi velit molestias
              doloremque molestiae dicta?
            </p>
          </div>
          <div class="darker mt-4 text-justify">
            <img
              src="https://i.imgur.com/CFpa3nK.jpg"
              alt=""
              class="rounded-circle"
              width="40"
              height="40"
            />
            <h4>Rob Simpson</h4>
            <span>- 20 October, 2018</span> <br />
            <p>
              Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Accusamus numquam assumenda hic aliquam vero sequi velit molestias
              doloremque molestiae dicta?
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Comments",
  date() {
    return {
      comments: "",
    };
  },

  created() {
    this.showcom();
  },
  methods: {
    showcom() {
      const token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiNGI0MGEwMTNjNTRiYjIyOTMxZmNmY2FmMzI1ZGNhYTdiNWEwNDc4Y2RiODlhNjNkN2Y4YzU2MDZlMDg1ZDdjYzIzN2M3YzFhODNmOWExMWIiLCJpYXQiOjE2MjIxOTI3MjAuNzQyNzU0LCJuYmYiOjE2MjIxOTI3MjAuNzQyNzYyLCJleHAiOjE2NTM3Mjg3MjAuNjQ5Mjk4LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.Wl40B-PcQ6UKP_MAYMcIHpjNDn7QJ0yHDjZ9YCB4UIE_ZsFv7-_y6XWg8_z7z6cJXaxlSiMLouumRqh5DOehYiarUF7er99aW-5YwxGbC_qN2PaygsD_0i7CfPrDzLIjxnCw2454FQhSowYuFEU108c-OZI84Mlek5xDuHmg7lREtNAlMzc5gOaNNSPD4PXTOBKt8nQ0ijq8Dm5JF9B8XQb-_iJkXwPUBABeAYUm9yLuvJ66i6nGVA3Hype6H6xQmu3mVPen8bq0ubfPgxKY6BQ5hgq1PbVUwL9pUnMkrIi15G0RppGAaiVUuLA4BQTZ4VpFsQqWcvfOYKeEZNyMcz-p4_LaStRehzwGyfY40t-pYytgsdeddmtRB1XcsNiMYd81-5zjqZwerjA1IrOCARmdO5JS4scBF_dY3bfwvLAVLoKniw3GfBNCuFF0Vsuajjxm5llLw6wKY1X79r549Kz-SKr88lmvAWGLlaVZu9BZpo9UsMqxU0WCevPvi067C-jwYXPHp_anHxENNCFt611p3_UFT4Pn2qKDI2OO8pKgrDl3hlCkD-FjVqbRDKLTHlUTgr3prPK-_Ukg_soa1Q8vUKhNaW5UeF3lZx-ZzarVBrRzcSVo2qsnETJzKKhvgVvzK1yCCUBumyQnn6Y2VGiC73ratY3UVwRIl58zyOQ";
      // prendre le nom
      // axios
      //   .get("http://127.0.0.1:8000/api/comments/1", {
      //     headers: {
      //       Authorization: `Basic ${token}`,
      //     },
      //   })
      //   .then((response) => {
      //     console.log(response);
      //   })
      //   .catch((data) => {
      //     console.log(data);
      //   });

      // prendre le commentaire
      axios
        .get("http://127.0.0.1:8000/api/comments/1", {
          headers: {
            Authorization: `Basic ${token}`,
          },
        })
        .then((response) => {
          this.comments = response.data[0];
          console.log(response.data[0]);
        })
        .catch((data) => {
          console.log(data);
        });
    },
  },
};
</script>

<style scoped>
.navbar-nav {
  width: 100%;
}

@media (min-width: 568px) {
  .end {
    margin-left: auto;
  }
}

@media (max-width: 768px) {
  #post {
    width: 100%;
  }
}

#clicked {
  padding-top: 1px;
  padding-bottom: 1px;
  text-align: center;
  width: 100%;
  background-color: #ecb21f;
  border-color: #a88734 #9c7e31 #846a29;
  color: black;
  border-width: 1px;
  border-style: solid;
  border-radius: 13px;
}

#profile {
  background-color: unset;
}

#post {
  margin: 10px;
  padding: 6px;
  padding-top: 2px;
  padding-bottom: 2px;
  text-align: center;
  background-color: #ecb21f;
  border-color: #a88734 #9c7e31 #846a29;
  color: black;
  border-width: 1px;
  border-style: solid;
  border-radius: 13px;
  width: 50%;
}

body {
  background-color: black;
}

#nav-items li a,
#profile {
  text-decoration: none;
  color: rgb(224, 219, 219);
  background-color: black;
}

.comments {
  margin-top: 5%;
  margin-left: 20px;
}

.darker {
  border: 1px solid #ecb21f;
  background-color: black;
  float: right;
  border-radius: 5px;
  padding-left: 40px;
  padding-right: 30px;
  padding-top: 10px;
}

.comment {
  border: 1px solid rgba(16, 46, 46, 1);
  background-color: rgba(16, 46, 46, 0.973);
  float: left;
  border-radius: 5px;
  padding-left: 40px;
  padding-right: 30px;
  padding-top: 10px;
}

.comment h4,
.comment span,
.darker h4,
.darker span {
  display: inline;
}

.comment p,
.comment span,
.darker p,
.darker span {
  color: rgb(184, 183, 183);
}

h1,
h4 {
  color: white;
  font-weight: bold;
}

label {
  color: rgb(212, 208, 208);
}

#align-form {
  margin-top: 20px;
}

.form-group p a {
  color: white;
}

#checkbx {
  background-color: black;
}

#darker img {
  margin-right: 15px;
  position: static;
}

.form-group input,
.form-group textarea {
  background-color: black;
  border: 1px solid rgba(16, 46, 46, 1);
  border-radius: 12px;
}

form {
  border: 1px solid rgba(16, 46, 46, 1);
  background-color: rgba(16, 46, 46, 0.973);
  border-radius: 5px;
  padding: 20px;
}
</style>