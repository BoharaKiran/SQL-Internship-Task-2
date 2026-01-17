USE intern_training_db;

#1.Table RECreation with Constraints
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    dob DATE NOT NULL,
    phone VARCHAR(15),
    course VARCHAR(50) NOT NULL
);

#2.inserting invalid data

INSERT INTO students VALUES
(1, 'Rahul', 'rahul@gmail.com', '2004-05-10', '9876543210', 'BCA');

#Duplicate PRIMARY KRY
INSERT INTO students VALUES
(1, 'Amit', 'amit@gmail.com', '2003-03-11', '9999999999', 'BCA');
#NULL VALUE
INSERT INTO students VALUES
(2, NULL, 'test@gmail.com', '2004-01-01', '8888888888', 'BCA');

#Duplicate EMAIL
INSERT INTO students VALUES
(3, 'Ravi', 'rahul@gmail.com', '2005-02-02', '7777777777', 'BCA');

#3.ALTER TABLE to add a new column
ALTER TABLE students
ADD address VARCHAR(200);

DESC STUDENTS;

#4.ALTER TABLE to RENAME COLUMN
ALTER TABLE students
RENAME COLUMN phone TO mobile;

#5.Drop a column
ALTER TABLE students
DROP COLUMN address;

DESC STUDENTS;
SELECT * FROM students;

/*6. Document why each constraint was chosen.
PRIMARY KEY (student_id) – uniquely identifies each student

NOT NULL – prevents empty important fields

UNIQUE (email) – avoids duplicate emails*/