
let io = require("socket.io")(4000, {cors:true,
  origins:["*"]});

io.on("connection", socket => {
  socket.on("error", er => console.log("error: ", er));

  socket.emit("connections", (42));

  // socket.emit("connections", (io.sockets.connected));

  socket.on("disconnect", () => {
    console.log("A user disconnected");
  });

  socket.on("chat-message", data => {
    console.log(data);
    socket.broadcast.emit("chat-message", data);
  });

  socket.on("typing", data => {
    socket.broadcast.emit("typing", data);
  });

  socket.on("stopTyping", data => {
    socket.broadcast.emit("stopTyping", data);
  });

  socket.on("joined", data => {
    // console.log(data)
    socket.broadcast.emit("joined", data);
  });

  socket.on("leave", data => {
    socket.broadcast.emit("leave", data);
  });
});