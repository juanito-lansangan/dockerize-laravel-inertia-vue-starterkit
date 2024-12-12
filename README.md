# Dockerized Laravel Inertia Vue Starter Kit

This repository provides a pre-configured starter kit for building Laravel applications using the Inertia.js stack with Vue.js. It includes a Dockerized setup with essential services and features such as:

- **Laravel Scheduler** for cron jobs
- **Laravel Horizon** for queue management
- **MySQL Database**
- **Nginx Webserver**

---

## Features

1. **Dockerized Environment**:
   - Containers for Laravel, MySQL, Nginx, Cron, and Horizon
   - Easy setup using `docker-compose`

2. **Pre-installed Tools**:
   - Laravel Scheduler for automated tasks
   - Laravel Horizon for queue management

3. **Built-in Commands**:
   - `composer app:install` for easy application setup

4. **Inertia.js with Vue.js**:
   - Seamless integration for building modern SPAs

---

## Prerequisites

Ensure you have the following installed on your system:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

---

## Installation

1. **Clone the Repository**:
   ```bash
   git clone git@github.com:juanito-lansangan/dockerize-laravel-inertia-vue-starterkit.git
   cd dockerize-laravel-inertia-vue-starterkit
   ```
2. **Create env file**:
    create .env and copy the content of .env.example
3. **One command to build and Install Dependencies and Set Up the Application**
    ```bash
    composer app:install
    ```
4. Run npm
    ```bash
    npm run dev
    ```
5. **Access the application**:
    http://localhost:8006

## Included Services

1. **Laravel Scheduler**:
   The Laravel Scheduler is pre-configured to run in the scheduler service. Jobs defined in the app/Console/Kernel.php will execute automatically.
2. **Laravel Horizon**
    The Horizon dashboard is available at http://localhost:8006/horizon. Use it to monitor your queues and manage workers.
3. **MySQL Database**
    - Host: db - docker mysql service
	- User: root
	- Password: root
	- Database: laravel_db
