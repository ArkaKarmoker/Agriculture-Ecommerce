# Agriculture-Ecommerce

## Agro

### Project Setup Instructions

1. **Clone/Download the Repository**
   - Clone or download the Agro repository from GitHub to your local machine.

2. **Move the Agro Folder**
   - Copy the `agro` folder into the `htdocs` directory of your XAMPP installation.

3. **Start XAMPP Servers**
   - Open the XAMPP control panel and start the **Apache** and **MySQL** servers.

4. **Create the Database**
   - Open phpMyAdmin (usually at `http://localhost/phpmyadmin/`).
   - Create a new database named `agro`.

5. **Import the SQL File**
   - In phpMyAdmin, select the `agro` database.
   - Import the `agro.sql` file located in `agro/database/agro.sql`.

6. **Access the Website**
   - Once the database is imported, you can access the website by visiting the following URL in your browser:
     ```
     http://localhost/agro
     ```
   - The base URL for the project is `http://localhost/agro`.
   - gd extension must be enabled in `php.ini`.
   - To enable the GD extension in XAMPP:

      1. Open the `php.ini` file in the `C:\xampp\php` folder.
      2. Search for `;extension=gd` and remove the semicolon (`;`).
      3. Save the file.
      4. Restart the **Apache** server from the XAMPP Control Panel.

### Login Details

- **Admin Login:**
  - Username: `admin`
  - Password: `admin123`

- **Vendor Login (Agro Mall):**
  - Username: `agro`
  - Password: `1234`

- **User Login (Example User):**
  - Username: `arkakarmoker@gmail.com`
  - Password: `1234`

Thank you!
