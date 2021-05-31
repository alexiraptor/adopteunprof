<template>
  <div class="user-list">
    <div class="data">
      <table class="ui celled table">
        <thead>
          <tr>
            <th style="width: 50px; text-align: center">#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>FacebookID</th>
            <th style="width: 190px">Action</th>
          </tr>
        </thead>

        <tbody>
          <User
            v-for="user in users"
            :key="user.id"
            :user="user"
            @onDelete="onDelete"
            @onEdit="onEdit"
          />
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
import User from "./User";

export default {
  name: "UserList",
  components: {
    User,
  },
  props: {
    users: {
      type: Object,
    },
  },
  methods: {
    onDelete(id) {
      this.$emit("onDelete", id);
    },
    onEdit(data) {
      this.$emit("onEdit", data);
    },
  },
};
</script>

<style scoped>
</style>