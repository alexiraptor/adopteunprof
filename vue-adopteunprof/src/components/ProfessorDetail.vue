<template>
  <div class="body">
    <div class="quickview">
      <div class="content">
        <div class="bloc-modale" v-if="revele">
          <div
            class="overlay"
            v-on:click="$emit('toggleModale', professor.ProfessorID)"
          ></div>
          <div class="modale card">
            <div
              v-on:click="$emit('toggleModale', professor.ProfessorID)"
              class="btn-modale btn btn-danger"
            >
              X
            </div>
            <div class="parent">
              <div class="col-md-6 col-sm-6 col-xs-12 product-left">
                <div class="thumb">
                  <img
                    src="https://pyxis.nymag.com/v1/imgs/280/a09/831956806c59629838ae46bd3e08255aaa-12-concerts.rsquare.w1200.jpg"
                    class="card-img-top block-modal__image"
                    alt=""
                  />
                  <h2 class="date">DA</h2>
                </div>
              </div>
              <div class="col-md-6 col-sm-6 col-xs-12 product-right">
                <div class="infos">
                  <h2 class="title">{{ professor.lastname }}</h2>
                  <br />
                  <ul class="blocks">
                    <li class="category_name">
                      <span>TITLE</span><a>DA</a>
                    </li>
                    <li class="region_name">
                      <span>GENRE</span><a>DA</a>
                    </li>
                  </ul>
                  <div class="blocks2">
                    <div class="description">DA</div>
                    <div class="price">DA</div>
                  </div>
                </div>
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
  name: "ProfessorDetail",
  props: ["revele", "toggleModale", "professors"],
  methods: {},
};
</script>

<style scoped>
.bloc-modale {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 1000;
}
.overlay {
  background: rgba(0, 0, 0, 0.5);
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
}
.modale {
  overflow-y: scroll;
  background: #36094b;
  color: rgb(255, 255, 255);
  padding: 30px;
  position: fixed;
  font-family: "Lato", sans-serif;
  font-weight: 400;
  font-size: 14px;
  line-height: 18px;
  letter-spacing: 0.5px;
  width: 700px;
  overflow-y: scroll;
}
.btn-modale {
  position: absolute;
  top: 10px;
  right: 10px;
  background: transparent;
  border: none;
  color: rgb(255, 255, 255);
  cursor: pointer;
}
.btn-modale:hover {
  color: #e611e9;
}
.parent {
  position: relative;
}
.product-left {
  float: left;
  padding: 0;
}
img {
  height: 300px;
  max-height: 300px;
  object-fit: contain;
}

.date {
  text-align: center;
  padding: 5px 5px 5px 5px;
  color: #ffffff;
  background-color: #e611e9;
  margin-top: 10px;
  font: 400 30px/30px "Racing Sans One", sans-serif;
  text-transform: uppercase;
  letter-spacing: -0.02em;
  line-height: 1.1;
}
.product-right {
  float: right;
}
.title {
  text-align: left;
  padding: 0 0 5px;
  color: rgb(255, 255, 255);
  margin-left: 15px;
  margin-top: 10px;
  margin-bottom: 3px;
  font: 400 20px/20px "Racing Sans One", sans-serif;
  text-transform: uppercase;
  letter-spacing: -0.02em;
  line-height: 1.1;
}

/*-------------------------------------------------*/
.blocks {
  border-bottom: 1px solid rgb(255, 255, 255);
  border-top: 1px solid rgb(255, 255, 255);
  padding: 20px 0;
  margin: 0 0 20px 15px;
  display: block;
  overflow: hidden;
  text-align: center;
  list-style: none;
}
.category_name {
  line-height: 28px;
  font-size: 14px;
  color: rgb(92, 92, 92);
  width: 95%;
  padding: 5px 5px 0;
  float: left;
  border: 1px solid rgb(255, 255, 255);
  margin-right: 15px;
  margin-bottom: 15px;
  text-align: center;
}
.region_name {
  line-height: 28px;
  font-size: 14px;
  color: rgb(92, 92, 92);
  width: 95%;
  padding: 5px 5px 0;
  float: left;
  border: 1px solid rgb(228, 228, 228);
  margin-bottom: 15px;
  text-align: center;
}
span {
  font-weight: 400;
  font-size: 13px;
  display: block;
  text-transform: uppercase;
  background: #ffffff;
  padding: 0;
}
a {
  text-decoration: none;
  background-color: transparent;
  color: #fff;
}
/*-------------------------------------------------*/
.description {
  margin-left: 15px;
  margin-bottom: 10px;
  font-weight: 400;
  font-size: 13px;
  line-height: 22px;
  width: 300px;
}
.price {
  border-bottom: 1px solid rgb(255, 255, 255);
  padding-bottom: 15px;
  color: rgb(255, 255, 255);
  font: 400 25px/25px "Racing Sans One", sans-serif;
  text-transform: uppercase;
  letter-spacing: -0.02em;
  line-height: 30px;
  margin-top: 10px;
  margin-bottom: 15px;
  margin-left: 20px;
  text-align: left;
}
/*-------------------------------------------------*/
.blocks3 {
  margin-bottom: 20px;
  margin-left: 20px;
  overflow: hidden;
  position: relative;
  clear: both;
}
.control-label {
  margin: 8px 8px 8px 0;
  float: left;
  font-size: 14px;
  font-weight: 400;
  color: rgb(255, 255, 255);
  max-width: 100%;
}
#input-quantity {
  width: 3.5rem;
  margin-right: 6px;
  margin-bottom: 5px;
  float: left;
  height: 37px;
  text-align: center;
  color: #999;
  opacity: 1;
  line-height: 20px;
  font-size: 12px;
  box-shadow: none;
  border-radius: 0;
  border-color: #e9e9e9;
  transition: all 0.5s;
  padding: 0.25rem;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  font-family: inherit;
}
#button-cartqv {
  width: auto;
  display: inline-block;
  vertical-align: middle;
  opacity: 1;
  font-size: 14px;
  font-weight: 400;
  padding: 10px 20px;
  text-transform: uppercase;
  border-radius: 0;
  transition: all 0.5s;
  color: #fff;
  background-color: #33bdea;
  border: none;
  outline: none;
  line-height: 18px;
  margin-bottom: 0;
  margin-left: 0px;
  text-align: center;
  white-space: nowrap;
  touch-action: manipulation;
  cursor: pointer;
  user-select: none;
  background-image: none;
  font-family: inherit;
  overflow: visible;
  transition-duration: 0.4s;
}
#button-cartqv:hover {
  background-color: #04759b;
}
</style>