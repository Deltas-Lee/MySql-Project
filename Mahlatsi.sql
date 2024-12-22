Sure! Here's an example of an SQL file that creates a database named "employees" with two tables: `departments` and `employees`. It also includes SQL statements to insert data into these tables.

```sql
-- Create the employees database
CREATE DATABASE IF NOT EXISTS employees;

-- Use the employees database
USE employees;

-- Create the departments table
CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- Insert data into the departments table
INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Engineering'),
('Marketing'),
('Sales');

-- Create the employees table
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    hire_date DATE NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert data into the employees table
INSERT INTO employees (first_name, last_name, email, hire_date, department_id) VALUES
('John', 'Doe', 'john.doe@example.com', '2023-01-15', 1),
('Jane', 'Smith', 'jane.smith@example.com', '2023-02-20', 2),
('Emily', 'Davis', 'emily.davis@example.com', '2023-03-25', 3),
('Michael', 'Brown', 'michael.brown@example.com', '2023-04-30', 4),
('Sarah', 'Wilson', 'sarah.wilson@example.com', '2023-05-10', 2);

-- Verify the data
SELECT * FROM departments;
SELECT * FROM employees;
```

This script does the following:
1. Creates a database named `employees`.
2. Switches to the `employees` database.
3. Creates a `departments` table with columns for department ID and department name.
4. Inserts sample data into the `departments` table.
5. Creates an `employees` table with columns for employee ID, first name, last name, email, hire date, and department ID.
6. Inserts sample data into the `employees` table.
7. Verifies the inserted data with `SELECT` statements.

You can save this content into a file with a `.sql` extension and execute it using your SQL database management tool.
