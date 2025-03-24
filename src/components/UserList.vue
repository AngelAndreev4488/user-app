
<template>
  <div>
    <h1>User List</h1>
    <ul>
      <li v-for="user in users" :key="user.id">
        <h2>{{ user.name }}</h2>
        <p>Email: {{ user.email }}</p>
        <p>Phone: {{ user.phone }}</p>
        <p>Address: {{ user.address.street }}, {{ user.address.city }}</p>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      users: [] // This array will hold the API data
    };
  },
  mounted() {
    fetch("https://jsonplaceholder.typicode.com/users/")
      .then(response => response.json())
      .then(data => {
        this.users = data; // Storing the fetched data
      })
      .catch(error => console.error("Error fetching data:", error));
  }
};
</script>
