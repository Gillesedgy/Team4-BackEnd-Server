This repository contains the backend code for Out&Abt project. Below are the instructions to set up the backend environment and configure the necessary files.

** Installation **

 To install the required dependencies, run the following command:


      npm install

 This will install all the necessary packages and dependencies for the backend.  

** Environment Configuration **

- Create a new file named '.env' in the root directory of your project
- Add the '.env' file to your 'gitignore' file to ensure it is not committed to version control.
- Inside the '.env' file, add the following environment variables:
  
        PORT="your_port_number"
        PG_HOST=localhost
        PG_PORT="your_own_postgres_port_number"
        PG_DATABASE="your_database_name"
        PG_USER=postgres
        SECRETKEY="your_secret_key"

Make sure you replace the values with your own. The 'PORT' variable specifies the port number on which the backenbd server will run on. The 'PG_HOST', 'PG_PORT', 'PG_DATABASE', and 'PG_USER' variables will specify which PostgreSQL database connection. The 'SECRETKEY' variable should be asecretkey of your choosing for secure operations
Then save the '.env' file.

You can now start the backend server by running the following command:
    npm start
    or npm install nodemon 
    type in nodemon in your terminal

This will start your backend server and make it accessible at the 'PORT' in your environmental configuration.

** Contributing **

If you wish to contribute to this project, please follow the guidelines mentioned in the FrontEnd readme file.


 
