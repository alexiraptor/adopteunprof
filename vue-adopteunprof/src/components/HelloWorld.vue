<template>
  <div class="container">

    <div class="register">
    <h2 class="title">Register :</h2>
    <p>Please fill in this form to create an account.</p>

    <input v-model="name" placeholder="NAME" />

    <input v-model="email" placeholder="EMAIL" />

    <input type="password" v-model="pwd" placeholder="PASSWORD" />

    <input
      type="password"
      v-model="pwd_confirm"
      placeholder="CONFIRM PASSWORD"
    />
    <button type="button" class="btn" id="createbtn" v-on:click="createUser">
      CREATE
    </button>

    <h2>{{ registererrormessage }}</h2>

    </div>


    <div class="login">
    <h2 class="title">Login :</h2>

    <input v-model="email" placeholder="EMAIL" />

    <input type="password" v-model="pwd" placeholder="PASSWORD" />

    <button type="button" class="btn" id="loginbtn" v-on:click="loginUser">
      LOGIN
    </button>

    <h2>{{ loginerrormessage }}</h2>

    </div>


    <div class="profile">
    <h2 class="title">Choose your profile :</h2>

    <label for="choice1">Student :</label>
    <input id="choice1" type="radio" name="genderS" value="student" checked="checked"/>

    <label for="choice2">Professor :</label>
    <input id="choice2" type="radio" name="genderS" value="professor"/>

    <input v-model="name" placeholder="NAME" />

    <input type="number" v-model="age" placeholder="AGE" />

    <button type="button" class="btn" id="profilebtn" v-on:click="createProfile">
      CREATE PROFILE
    </button>

    <h2>{{ profileerrormessage }}</h2>

    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: "Register",
  data() {
    return {
      name: "",
      age: "",
      email: "",
      pwd: "",
      pwd_confirm: "",
      registererrormessage: "",
      loginerrormessage: "",
      profileerrormessage: "",
      profiltype: "",
    };
  },

  methods: {
    //REGISTER :
    createUser() {
      console.log("triggered")
      if (
        ![
          this.name,
          this.email,
          this.pwd,
          this.pwd_confirm,
        ].every(Boolean)
      ) {
        console.log("NULL");
        this.registererrormessage = "All fields are required !";
      } else {
        if (this.pwd == this.pwd_confirm) {
          console.log("PWD MATCHES");

          console.log("ATTEMPT TO CREATE USER");

            axios.post('http://localhost:8000/api/register', {
              name: this.name,
              email: this.email,
              password: this.pwd,
              password_confirmation: this.pwd_confirm,
            })
            .then((response) => {
              console.log("USER :");
              console.log(response);
              this.registererrormessage = "Thank you !";


            })
            .catch((error) => {
              console.log(error);
            });
        } else {
          this.registererrormessage = "Password and confirmation doesn't match !";
        }
      }
    },


    //LOGIN :
    loginUser() {
      if (![this.email, this.pwd].every(Boolean)) {
        console.log("NULL");
        this.loginerrormessage = "All fields are required !";
      } else {
        console.log("ATTEMPT TO LOGIN USER");

            axios.post('http://localhost:8000/api/login', {
              email: this.email,
              password: this.pwd,
            })
          .then((response) => {
            console.log(response);
            // ID :
            console.log("ID IS :");
            var userid = response.data.user.id
            localStorage.setItem("userID", userid);
            console.log(localStorage.getItem("userID"));
            // TOKEN :
            var token = response.data.token
            localStorage.setItem("authtoken", token);
            console.log("TOKEN IS :")
            console.log(localStorage.getItem("authtoken"));
          })
          .catch((error) => {
            console.log(error);
          });
      }
    },

    // PROFILE :
    createProfile() {
      
      var userID = localStorage.getItem("userID");
      var token = localStorage.getItem("authtoken")
      console.log(token)
      console.log(userID)

      var radios = document.getElementsByName('genderS');
      for (var i = 0, length = radios.length; i < length; i++) {
        if (radios[i].checked) {
          console.log(radios[i].value);
          this.profiltype = (radios[i].value);
          break;
        }
      }

      if (![this.name, this.age].every(Boolean)) {
        console.log("NULL");
        this.profileerrormessage = "All fields are required !";
      } else {
        console.log("ATTEMPT TO CREATE PROFILE");

            axios.post('http://localhost:8000/api/' + this.profiltype, {
              userID: userID,
              name: this.name,
              age: this.age,
            }, {
              headers: {
                'Authorization': `Bearer ${token}`
              }
            })
          .then((response) => {
            console.log(response);
                    this.profileerrormessage = "Thank you !";
          })
          .catch((error) => {
            console.log(error);
          });
      }
    },
  },
};
</script>

<style scoped>
.container {
  color: black;
  text-align: center;
  font-family: "Racing Sans One", sans-serif !important;
}

input {
  font-size: 15px;
  color: black;
  width: 15%;
  text-align: center;
  padding: 12px 20px;
  margin: 20px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-family: "Racing Sans One", sans-serif !important;
}
input::placeholder {
  color: black;
  font-weight: bold;
}
.title {
  font-size: 40px;
  font-family: "Racing Sans One", sans-serif !important;
}
#createbtn {
  color: black;
  font-weight: bold;
  font-family: "Racing Sans One", sans-serif !important;
  font-size: 15px;
}
#loginbtn {
  color: black;
  font-weight: bold;
}
#profilebtn {
  color: black;
  font-weight: bold;
}
a {
  color: #e611e9;
}
</style>
