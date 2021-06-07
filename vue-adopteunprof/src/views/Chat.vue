<template>
  <div id="app">
    <div class="container">
      <div class="col-lg-6 offset-lg-3">
        <div v-if="ready">
          <p v-for="(user, i) in info" :key="i">
            {{ user.username }} {{ user.type }}
          </p>
        </div>

        <div v-if="!ready">
          <h4 class="donnees">Entrez votre pseudo</h4>
          <form @submit.prevent="addUser">
            <div class="form-group row">
              <input
                type="text"
                class="form-control col-9"
                v-model="username"
                placeholder="Entrez votre pseudo ici"
              />
              <input
                type="submit"
                value="Rejoindre le chat"
                class="btn btn-sm btn-info ml-1"
              />
            </div>
          </form>
        </div>
        <h2 v-else class="donnees">{{ username }}</h2>
        <div class="card bg-info" v-if="ready">
          <div class="card-header text-white">
            <h4>Discussion</h4>
          </div>
          <ul class="list-group list-group-flush text-right">
            <small v-if="typing" class="text-white"
              >{{ typing }} est en train d'écrire</small
            >
            <li
              class="list-group-item"
              v-for="(message, i) in messages"
              :key="i"
            >
              <span :class="{ 'float-left': message.type === 1 }">
                {{ message.message }}
                <small>:{{ message.user }}</small>
              </span>
            </li>
          </ul>

          <div class="card-body">
            <form @submit.prevent="send">
              <div class="form-group">
                <input
                  type="text"
                  class="form-control"
                  v-model="newMessage"
                  placeholder="Tapez un message"
                />
              </div>
            </form>
            <a id="leave-btn" class="btn" @click="LeaveRoom">Quitter le chat</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import io from "socket.io-client";
var socket = io.connect("ws://89.234.182.164:4000");
export default {
  name: "Chat",
  data: () => ({
    newMessage: null,
    messages: [],
    typing: false,
    username: null,
    ready: false,
    info: [],
    connections: 0,
  }),

  created() {
    window.onbeforeunload = () => {
      socket.emit("leave", this.username);
    };

    socket.on("chat-message", (data) => {
      this.messages.push({
        message: data.message,
        type: 1,
        user: data.user,
      });
    });

    socket.on("typing", (data) => {
      this.typing = data;
    });

    socket.on("stopTyping", () => {
      this.typing = false;
    });

    socket.on("joined", (data) => {
      this.info.push({
        username: data,
        type: "joined",
      });

      setTimeout(() => {
        this.info = [];
      }, 5000);
    });

    socket.on("leave", (data) => {
      this.info.push({
        username: data,
        type: "left",
      });

      setTimeout(() => {
        this.info = [];
      }, 5000);
    });

    socket.on("connections", (data) => {
      this.connections = data;
    });
  },

  watch: {
    newMessage(value) {
      value ? socket.emit("typing", this.username) : socket.emit("stopTyping");
    },
  },

  methods: {
    send() {
      this.messages.push({
        message: this.newMessage,
        type: 0,
        user: "Me",
      });

      socket.emit("chat-message", {
        message: this.newMessage,
        user: this.username,
      });
      this.newMessage = null;
    },

    addUser() {
      this.ready = true;
      socket.emit("joined", this.username);
    },

    LeaveRoom() {
      document.getElementById("leave-btn").addEventListener("click", () => {
        const leaveRoom = confirm("Êtes-vous sûr de vouloir quitter le chat ?");
        if (leaveRoom) {
          window.location.href = "https://www.under-wolf.eu/";
        } else {
        }
      });
    },
  },
};
</script>

<style scoped>
.donnees {
  margin-top: 50px;
  margin-bottom: 30px;
  font-size: 26px;
  color: #222a35;
  letter-spacing: 1px;
  font-weight: 700;
  line-height: 1;
  word-break: break-word;
  font-family: inherit;
}
.btn {
  background-color: #5caf01;
  border: 2px solid #5caf01;
  color: white;
  padding: 10px 16px;
  text-decoration: none;
  font-size: 15px;
  cursor: pointer;
  border-radius: 5px;
  transition: all 300ms ease-out;
  margin-top: 10px;
}
.btn:hover {
  background-color: transparent;
  border: 2px solid #5caf01;
  color: black;
}
.bg-info {
  margin-top: 50px;
  background-color: #5caf01 !important;
}
</style>