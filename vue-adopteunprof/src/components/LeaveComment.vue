<template>
  <div>
    <div class="col-lg-4 col-md-5 col-sm-4 offset-md-1 offset-sm-1 col-12 mt-4">
      <form id="algin-form">
        <div class="form-group">
          <h4>Laissez un avis</h4>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="text" name="email" id="email" class="form-control" />
          </div>
          <div class="rating"> <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label> <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label> <input type="radio" name="rating" value="3" id="3"><label for="3">☆</label> <input type="radio" name="rating" value="2" id="2"><label for="2">☆</label> <input type="radio" name="rating" value="1" id="1"><label for="1">☆</label> </div>
          <br />
          <label for="message">Commentaire</label>
          <textarea
            name="msg"
            id=""
            msg
            cols="30"
            rows="5"
            class="form-control"
            style="background-color: black"
          ></textarea>
        </div>
        <!-- <div class="form-group">
          <label for="name">Name</label>
          <input type="text" name="name" id="fullname" class="form-control" />
        </div> -->
        <!-- <div class="form-group">
          <label for="email">Email</label>
          <input type="text" name="email" id="email" class="form-control" />
        </div> -->
        <!-- <div class="form-group">
          <p class="text-secondary">
            If you have a
            <a href="#" class="alert-link">gravatar account</a> your address
            will be used to display your profile picture.
          </p>
        </div> -->
        <div class="form-inline">
          <input type="checkbox" name="check" id="checkbx" class="mr-1" />
          <label for="subscribe"
            >J'affirme avoir écrit un commentaire respectueux sans caractère
            haineux</label
          >
        </div>
        <div class="form-group">
          <button type="button" id="post" class="btn">Envoyer !</button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>

export default {
  data() {
    return {
      checked: false
    }
  },
}
</script>


<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap');

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
  border: 1px solid #222a35;
  background-color: #222a35;
  border-radius: 5px;
  padding: 20px;
}

.rating {
    display: inline-flex;
    margin-top: -10px;
    flex-direction: row-reverse
}

.rating>input {
    display: none
}

.rating>label {
    position: relative;
    width: 28px;
    font-size: 35px;
    color: #ff0000;
    cursor: pointer
}

.rating>label::before {
    content: "\2605";
    position: absolute;
    opacity: 0
}

.rating>label:hover:before,
.rating>label:hover~label:before {
    opacity: 1 !important
}

.rating>input:checked~label:before {
    opacity: 1
}

.rating:hover>input:checked~label:before {
    opacity: 0.4
}
</style>