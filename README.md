# E-Commerce-Web-App

# Group Information

## Members
* Aayushi Khatri (s3948240)
* Akshita Agrawal (s3933878)
* Penusha Udapamunuwa (s3925899)
* Samuel John Cherian (s3953641)
* Sarang Kuniyil (s3914175)

# Initial Setup

## Setup your environment 
You will need to have in your system

- Java 17.0 or higher
- Node and npm
- Apache Maven
- IDE or Editor

Other tools will be required to complete the project (e.g., Docker)

# Run Instructions

For the frontend, sometimes navigating to another page might take one or two clicks. Unsure why that is happening but we will try to fix it as soon as possible.

## Backend

- Delete any unused services (i.e. backend/movies). They are there only for an initial reference.
- Use [Spring initializr](https://start.spring.io/) to create your (micro)services
- Place any new backend service in its own directory (i.e., backend/<service-name>)
- Confirm you can run your applicaiton (./mvnw package && java -jar target/[microservice]-0.0.1-SNAPSHOT.jar)

## Frontend
- cd into frontend/
- Install dependencies "npm install"
- Run the app with "npm run dev"

## Docker Instructions
- cd into backend/
- Run docker-compose -f docker-compose-mysql.yml --env-file compose-vars.env up
This should build frontend and backend images and run the application

## Local Instructions
- To run the application locally, go to application.properties and comment out the first four lines (1-4) and uncomment lines 7-10.

- Create schema named 'superprice' on MySQL and run the sql files located in backend/main/resources/db/migration. Ensure that the db is running on port 3306

- cd into backend and run 'mvn spring-boot:run'

- cd into frontend and run 'npm run dev'
