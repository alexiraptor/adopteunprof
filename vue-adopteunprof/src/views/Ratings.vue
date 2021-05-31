<template>
  <button
    type="button"
    class="btn btn-danger"
    data-toggle="modal"
    data-target="#form"
  >
    See Modal with Form
  </button>
  <div
    class="modal fade"
    id="form"
    tabindex="-1"
    role="dialog"
    aria-labelledby="exampleModalLabel"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="text-right cross"><i class="fa fa-times mr-2"></i></div>
        <div class="card-body text-center">
          <img
            src=" https://i.imgur.com/d2dKtI7.png"
            height="100"
            width="100"
          />
          <div class="comment-box text-center">
            <h4>Add a comment</h4>
            <div class="rating">
              <input type="radio" name="rating" value="5" id="5" /><label
                for="5"
                >☆</label
              >
              <input type="radio" name="rating" value="4" id="4" /><label
                for="4"
                >☆</label
              >
              <input type="radio" name="rating" value="3" id="3" /><label
                for="3"
                >☆</label
              >
              <input type="radio" name="rating" value="2" id="2" /><label
                for="2"
                >☆</label
              >
              <input type="radio" name="rating" value="1" id="1" /><label
                for="1"
                >☆</label
              >
            </div>
            <div class="comment-area">
              <textarea
                class="form-control"
                placeholder="what is your view?"
                rows="4"
              ></textarea>
            </div>
            <div class="text-center mt-4">
              <button class="btn btn-success send px-5">
                Send message <i class="fa fa-long-arrow-right ml-1"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<style>
@import url("https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap");

html,
body {
  height: 100%;
}

body {
  display: grid;
  place-items: center;
  font-family: "Manrope", sans-serif;
  background: #000;
}

.cross {
  padding: 10px;
  color: #d6312d;
  cursor: pointer;
  font-size: 23px;
}

.cross i {
  margin-top: -5px;
  cursor: pointer;
}

.comment-box {
  padding: 5px;
}

.comment-area textarea {
  resize: none;
  border: 1px solid #ff0000;
}

.form-control:focus {
  color: #495057;
  background-color: #fff;
  border-color: #ffffff;
  outline: 0;
  box-shadow: 0 0 0 1px rgb(255, 0, 0) !important;
}

.send {
  color: #fff;
  background-color: #ff0000;
  border-color: #ff0000;
}

.send:hover {
  color: #fff;
  background-color: #f50202;
  border-color: #f50202;
}

.rating {
  display: inline-flex;
  margin-top: -10px;
  flex-direction: row-reverse;
}

.rating > input {
  display: none;
}

.rating > label {
  position: relative;
  width: 28px;
  font-size: 35px;
  color: #ff0000;
  cursor: pointer;
}

.rating > label::before {
  content: "\2605";
  position: absolute;
  opacity: 0;
}

.rating > label:hover:before,
.rating > label:hover ~ label:before {
  opacity: 1 !important;
}

.rating > input:checked ~ label:before {
  opacity: 1;
}

.rating:hover > input:checked ~ label:before {
  opacity: 0.4;
}
</style>
