<template>
  <div>
    <h1>User List</h1>
    <!-- Show loading message -->
    <div v-if="loading" class="loading">Loading data...</div>

    <!-- Show error message if there's an error -->
    <div v-else-if="error" class="error">{{ error }}</div>

    <!-- Display user list when successfully fetched -->
    <ul v-else>
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
import '../components/styles_user_list.css';

export default {
  data() {
    return {
      users: [], // Holds user data
      loading: true, // Indicates loading state
      error: null // Holds error messages
    };
  },
  mounted() {
    // Fetch data from the API
    fetch("https://jsonplaceholder.typicode.com/users/")
      .then((response) => {
        if (!response.ok) {
          throw new Error("Network response was not ok.\nTry again later!");
        }
        return response.json();
      })
      .then((data) => {
        this.users = data; // Store data into the users array
        this.loading = false; // Turn off the loading state
      })
      .catch((error) => {
        this.error = error.message; // Set error message
        console.error("Error occurred:", this.error); // Log error for debugging (explicit use)
        this.loading = false; // Turn off the loading state
      });
  }
};
</script>
