# SQL-Internship-Task-2
## Data Types, Constraints & Table Design

### Objective
To design a students table using correct SQL data types, apply constraints, perform ALTER operations, and test data integrity.

Tools Used
- MySQL Workbench  
- SQL Queries

## Table Design

### Create Table Query

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    dob DATE NOT NULL,
    phone VARCHAR(15),
    course VARCHAR(50) NOT NULL
);

## Constraints Used

- PRIMARY KEY → Uniquely identifies each student  
- NOT NULL → Prevents empty important fields  
- UNIQUE → Avoids duplicate email entries  
- DATE → Ensures valid date format  

## Testing Constraint Violations

-- Duplicate Primary Key
INSERT INTO students VALUES
(1, 'Amit', 'amit@gmail.com', '2003-03-11', '9999999999', 'BCA');

-- NULL in NOT NULL column
INSERT INTO students VALUES
(2, NULL, 'test@gmail.com', '2004-01-01', '8888888888', 'BCA');

-- Duplicate Email
INSERT INTO students VALUES
(3, 'Ravi', 'rahul@gmail.com', '2005-02-02', '7777777777', 'BCA');

## Learning Outcome

- Understood correct SQL data types  
- Applied constraints for data integrity  
- Performed table modification using ALTER  
- Tested validation rules with invalid data  

