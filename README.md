# Dockerized Laravel Inertia Vue Starter Kit

This repository provides a pre-configured starter kit for building Laravel applications using the Inertia.js stack with Vue.js. It includes a Dockerized setup with essential services and features such as:

-   **Laravel Scheduler** for cron jobs
-   **Laravel Horizon** for queue management
-   **MySQL Database**
-   **Nginx Webserver**

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

-   [Docker](https://www.docker.com/get-started)
-   [Docker Compose](https://docs.docker.com/compose/install/)

---

## Installation

1. **Clone the Repository**:
    ```bash
    git clone git@github.com:juanito-lansangan/dockerize-laravel-inertia-vue-starterkit.git
    cd dockerize-laravel-inertia-vue-starterkit
    ```
2. **One command to build and Install Dependencies and Set Up the Application**
    ```bash
    composer app:install
    ```
3. **Run migration and seeders**:

    You might wait for a few seconds to run this command to avoid connection error, because the db container might not yet finish booting up. If you encounter the connection error, just run this command again after a 10-15 seconds

    ```bash
    composer app:db-migrate-seed
    ```

4. **Start the app**:
    ```bash
    composer app:start
    ```
5. **Access the application**
   http://localhost:8008

## Included Services

1. **Laravel Scheduler**:

    The Laravel Scheduler is pre-configured to run in the scheduler service. Jobs defined in the `routes/console.php` will execute automatically.

2. **Laravel Horizon**

    The Horizon dashboard is available at http://localhost:8008/horizon. Use it to monitor your queues and manage workers.

3. **MySQL Database**
    - Host: db - docker mysql service
    - User: root
    - Password: root
    - Database: laravel_db
