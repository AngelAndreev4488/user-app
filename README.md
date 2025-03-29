# user-app

## Overview
This project is a user list application built with **Vue.js**. It fetches and displays user data dynamically, providing a responsive and user-friendly interface suitable for all screen sizes. The app demonstrates key skills in front-end development, including handling API data, creating responsive designs, and managing error states effectively.

---

## Project setup
### Install dependencies
```bash
npm install


## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

```
Docker Setup
```
This project can be containerized using Docker for easier deployment and scalability. Below are the steps to build and run the Docker container.


###Docker commands

###Build the Docker Image
```
docker build -t user-app .
```


###Run the Docker Container
```
docker run -p 8080:8080 user-app
```


###Stop the Docker Container
###Get the ID

```
docker ps
docker stop <container_id>
```

