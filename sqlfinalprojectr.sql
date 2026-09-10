-- ============================================================
-- PROJECT: FINAL PROJECT
-- UNIVERSITY COURSE MANAGEMENT SYSTEM
-- ============================================================


-- CREATE AND USE DATABASE

CREATE DATABASE UniversityCourseManagement;

-- o/p:-Query OK, 1 row affected (0.469 sec)

USE UniversityCourseManagement;

-- o/p:-Database changed



-- ============================================================
-- 1. STUDENTS TABLE
-- ============================================================

-- Create Students Table

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    BirthDate DATE,
    EnrollmentDate DATE
);

-- o/p:-
-- Query OK, 0 rows affected (0.653 sec)


-- Insert Sample Data

INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '2000-01-15', '2022-08-01'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '1999-05-25', '2021-08-01');

-- -- o/p:-
-- Query OK, 2 rows affected (0.266 sec)
-- Records: 2  Duplicates: 0  Warnings: 0


-- ============================================================
-- 2. COURSES TABLE
-- ============================================================

-- Create Courses Table

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DepartmentID INT,
    Credits INT
);

-- o/p:-
-- Query OK, 0 rows affected (0.157 sec)


-- Insert Sample Data

INSERT INTO Courses
(CourseID, CourseName, DepartmentID, Credits)
VALUES
(101, 'Introduction to SQL', 1, 3),
(102, 'Data Structures', 2, 4);

-- -- o/p:-
-- Query OK, 2 rows affected (0.160 sec)
-- Records: 2  Duplicates: 0  Warnings: 0


-- ============================================================
-- 3. INSTRUCTORS TABLE
-- ============================================================

-- Create Instructors Table

CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DepartmentID INT
);

-- o/p:-
-- Query OK, 0 rows affected (0.280 sec)


-- Insert Sample Data

INSERT INTO Instructors
(InstructorID, FirstName, LastName, Email, DepartmentID)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@univ.com', 1),
(2, 'Bob', 'Lee', 'bob.lee@univ.com', 2);

-- o/p:-
-- Query OK, 2 rows affected (0.099 sec)
-- Records: 2  Duplicates: 0  Warnings: 0


-- ============================================================
-- 4. ENROLLMENTS TABLE
-- ============================================================

-- Create Enrollments Table

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE
);

-- o/p:-
-- Query OK, 0 rows affected (0.179 sec)


-- Insert Sample Data

INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(1, 1, 101, '2022-08-01'),
(2, 2, 102, '2021-08-01');

-- o/p:-
-- Query OK, 2 rows affected (0.137 sec)
-- Records: 2  Duplicates: 0  Warnings: 0


-- ============================================================
-- 5. DEPARTMENTS TABLE
-- ============================================================

-- Create Departments Table

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- o/p:-
-- Query OK, 0 rows affected (0.335 sec)


-- Insert Sample Data

INSERT INTO Departments
(DepartmentID, DepartmentName)
VALUES
(1, 'Computer Science'),
(2, 'Mathematics');

-- o/p:-
-- Query OK, 2 rows affected (0.092 sec)
-- Records: 2  Duplicates: 0  Warnings: 0


-- ============================================================
-- QUERIES TO PERFORM
-- ============================================================


-- ============================================================
-- 1. Perform CRUD Operations on all tables.
-- ============================================================


-- -------------------------
-- STUDENTS TABLE
-- -------------------------

-- CREATE / INSERT

INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(3, 'Alex', 'Brown', 'alex.brown@email.com', '2001-03-10', '2023-08-01');

-- o/p:-
-- Query OK, 1 row affected (0.114 sec)


-- READ

SELECT * FROM Students;

-- o/p:-
-- +-----------+-----------+----------+----------------------+------------+----------------+
-- | StudentID | FirstName | LastName | Email                | BirthDate  | EnrollmentDate |
-- +-----------+-----------+----------+----------------------+------------+----------------+
-- |         1 | John      | Doe      | john.doe@email.com   | 2000-01-15 | 2022-08-01     |
-- |         2 | Jane      | Smith    | jane.smith@email.com | 1999-05-25 | 2021-08-01     |
-- |         3 | Alex      | Brown    | alex.brown@email.com | 2001-03-10 | 2023-08-01     |
-- +-----------+-----------+----------+----------------------+------------+----------------+
-- 3 rows in set (0.016 sec)


-- UPDATE

UPDATE Students
SET Email = 'alex.new@email.com'
WHERE StudentID = 3;

-- o/p:-
-- Query OK, 1 row affected (0.319 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0


-- DELETE

DELETE FROM Students
WHERE StudentID = 3;

-- o/p:-
-- Query OK, 1 row affected (0.216 sec)


-- -------------------------
-- COURSES TABLE
-- -------------------------

-- CREATE / INSERT

INSERT INTO Courses
(CourseID, CourseName, DepartmentID, Credits)
VALUES
(103, 'Python Programming', 1, 3);

-- o/p:-
-- Query OK, 1 row affected (0.097 sec)


-- READ

SELECT * FROM Courses;

-- -- o/p:-
-- +----------+---------------------+--------------+---------+
-- | CourseID | CourseName          | DepartmentID | Credits |
-- +----------+---------------------+--------------+---------+
-- |      101 | Introduction to SQL |            1 |       3 |
-- |      102 | Data Structures     |            2 |       4 |
-- |      103 | Python Programming  |            1 |       3 |
-- +----------+---------------------+--------------+---------+
-- 3 rows in set (0.006 sec)


-- UPDATE

UPDATE Courses
SET Credits = 4
WHERE CourseID = 103;

-- o/p:-
-- Query OK, 1 row affected (0.085 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0


-- DELETE

DELETE FROM Courses
WHERE CourseID = 103;

-- o/p:-
-- Query OK, 1 row affected (0.079 sec)


-- -------------------------
-- INSTRUCTORS TABLE
-- -------------------------

-- CREATE / INSERT

INSERT INTO Instructors
(InstructorID, FirstName, LastName, Email, DepartmentID)
VALUES
(3, 'David', 'Miller', 'david.miller@univ.com', 1);

-- o/p:-
-- Query OK, 1 row affected (0.026 sec)


-- READ

SELECT * FROM Instructors;

-- o/p:-
-- +--------------+-----------+----------+------------------------+--------------+
-- | InstructorID | FirstName | LastName | Email                  | DepartmentID |
-- +--------------+-----------+----------+------------------------+--------------+
-- |            1 | Alice     | Johnson  | alice.johnson@univ.com |            1 |
-- |            2 | Bob       | Lee      | bob.lee@univ.com       |            2 |
-- |            3 | David     | Miller   | david.miller@univ.com  |            1 |
-- +--------------+-----------+----------+------------------------+--------------+
-- 3 rows in set (0.005 sec)


-- UPDATE

UPDATE Instructors
SET Email = 'david.new@univ.com'
WHERE InstructorID = 3;

-- o/p:-
-- Query OK, 1 row affected (0.025 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0


-- DELETE

DELETE FROM Instructors
WHERE InstructorID = 3;

-- o/p:-
-- Query OK, 1 row affected (0.087 sec)


-- -------------------------
-- ENROLLMENTS TABLE
-- -------------------------

-- CREATE / INSERT

INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(3, 1, 102, '2023-08-01');

-- o/p:-
-- Query OK, 1 row affected (0.085 sec)


-- READ

SELECT * FROM Enrollments;

-- o/p:-
-- +--------------+-----------+----------+----------------+
-- | EnrollmentID | StudentID | CourseID | EnrollmentDate |
-- +--------------+-----------+----------+----------------+
-- |            1 |         1 |      101 | 2022-08-01     |
-- |            2 |         2 |      102 | 2021-08-01     |
-- |            3 |         1 |      102 | 2023-08-01     |
-- +--------------+-----------+----------+----------------+
-- 3 rows in set (0.005 sec)


-- UPDATE

UPDATE Enrollments
SET EnrollmentDate = '2023-08-15'
WHERE EnrollmentID = 3;

-- o/p:-
-- Query OK, 1 row affected (0.100 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0


-- DELETE

DELETE FROM Enrollments
WHERE EnrollmentID = 3;

-- o/p:-
-- Query OK, 1 row affected (0.104 sec)


-- -------------------------
-- DEPARTMENTS TABLE
-- -------------------------

-- CREATE / INSERT

INSERT INTO Departments
(DepartmentID, DepartmentName)
VALUES
(3, 'Physics');

-- -- o/p:-
-- Query OK, 1 row affected (0.109 sec)


-- READ

SELECT * FROM Departments;

-- o/p:-
-- +--------------+------------------+
-- | DepartmentID | DepartmentName   |
-- +--------------+------------------+
-- |            1 | Computer Science |
-- |            2 | Mathematics      |
-- |            3 | Physics          |
-- +--------------+------------------+
-- 3 rows in set (0.009 sec)


-- UPDATE

UPDATE Departments
SET DepartmentName = 'Physics and Applied Science'
WHERE DepartmentID = 3;

-- o/p:-
-- Query OK, 1 row affected (0.043 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0


-- DELETE

DELETE FROM Departments
WHERE DepartmentID = 3;

-- o/p:-
-- Query OK, 1 row affected (0.101 sec)


-- ============================================================
-- Inserting additional data to perform below queries
-- ============================================================

-- Table Students

INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(3, 'Alex', 'Brown', 'alex.brown@email.com', '2001-03-10', '2023-01-15'),
(4, 'Emily', 'Davis', 'emily.davis@email.com', '2000-07-20', '2023-07-10'),
(5, 'Michael', 'Wilson', 'michael.wilson@email.com', '1999-11-12', '2022-09-15'),
(6, 'Sophia', 'Taylor', 'sophia.taylor@email.com', '2001-02-28', '2024-01-20'),
(7, 'Daniel', 'Anderson', 'daniel.anderson@email.com', '2000-10-05', '2024-07-01'),
(8, 'Olivia', 'Thomas', 'olivia.thomas@email.com', '2002-04-18', '2025-01-10');

-- o/p:-








-- Table Departments
INSERT INTO Departments
(DepartmentID, DepartmentName)
VALUES
(3, 'Physics');



--Table Courses
INSERT INTO Courses
(CourseID, CourseName, DepartmentID, Credits)
VALUES
(103, 'Calculus', 2, 4),
(104, 'Linear Algebra', 2, 3),
(105, 'Statistics', 2, 3),
(106, 'Discrete Mathematics', 2, 4),
(107, 'Physics Fundamentals', 3, 3),
(108, 'Python Programming', 1, 4);

-- o/p:-




--Table Instructors

INSERT INTO Instructors
(InstructorID, FirstName, LastName, Email, DepartmentID)
VALUES
(3, 'David', 'Miller', 'david.miller@univ.com', 1),
(4, 'Emma', 'Wilson', 'emma.wilson@univ.com', 1),
(5, 'James', 'Taylor', 'james.taylor@univ.com', 3);

-- o/p:-






-- Table Enrollments
INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(3, 3, 101, '2023-01-15'),
(4, 4, 101, '2023-07-10'),
(5, 5, 101, '2022-09-15'),
(6, 6, 101, '2024-01-20'),
(7, 7, 101, '2024-07-01'),

(8, 1, 102, '2022-08-02'),
(9, 2, 102, '2022-08-06'),
(10, 3, 102, '2023-01-16'),
(11, 4, 102, '2023-07-11'),
(12, 5, 102, '2022-09-16'),
(13, 6, 102, '2024-01-21'),

(14, 1, 103, '2022-08-03'),
(15, 3, 103, '2023-01-17'),
(16, 4, 104, '2023-07-12'),
(17, 5, 105, '2022-09-17'),
(18, 6, 106, '2024-01-22'),
(19, 7, 107, '2024-07-02'),
(20, 2, 108, '2022-08-07'),
(21, 3, 108, '2023-01-18');

-- o/p:-







-- 2. Retrieve students who enrolled after 2022.

SELECT *
FROM Students
WHERE EnrollmentDate > '2022-12-31';

-- -- o/p:-
-- +-----------+-----------+----------+---------------------------+------------+----------------+
-- | StudentID | FirstName | LastName | Email                     | BirthDate  | EnrollmentDate |
-- +-----------+-----------+----------+---------------------------+------------+----------------+
-- |         3 | Alex      | Brown    | alex.brown@email.com      | 2001-03-10 | 2023-01-15     |
-- |         4 | Emily     | Davis    | emily.davis@email.com     | 2000-07-20 | 2023-07-10     |
-- |         6 | Sophia    | Taylor   | sophia.taylor@email.com   | 2001-02-28 | 2024-01-20     |
-- |         7 | Daniel    | Anderson | daniel.anderson@email.com | 2000-10-05 | 2024-07-01     |
-- |         8 | Olivia    | Thomas   | olivia.thomas@email.com   | 2002-04-18 | 2025-01-10     |
-- +-----------+-----------+----------+---------------------------+------------+----------------+
-- 5 rows in set (0.006 sec)


-- 3. Retrieve courses offered by the Mathematics department with LIMIT 5.

SELECT c.*
FROM Courses c
JOIN Departments d
ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics'
LIMIT 5;

-- -- o/p:-
-- +----------+----------------------+--------------+---------+
-- | CourseID | CourseName           | DepartmentID | Credits |
-- +----------+----------------------+--------------+---------+
-- |      102 | Data Structures      |            2 |       4 |
-- |      103 | Calculus             |            2 |       4 |
-- |      104 | Linear Algebra       |            2 |       3 |
-- |      105 | Statistics           |            2 |       3 |
-- |      106 | Discrete Mathematics |            2 |       4 |
-- +----------+----------------------+--------------+---------+
-- 5 rows in set (0.015 sec)


-- 4. Count students enrolled in each course, HAVING more than 5 students.

SELECT CourseID, COUNT(StudentID) AS StudentCount
FROM Enrollments
GROUP BY CourseID
HAVING COUNT(StudentID) > 5;

-- -- o/p:-
-- +----------+--------------+
-- | CourseID | StudentCount |
-- +----------+--------------+
-- |      101 |            6 |
-- |      102 |            7 |
-- +----------+--------------+


-- 5. Find students enrolled in both Introduction to SQL and Data Structures.

SELECT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e1
ON s.StudentID = e1.StudentID
JOIN Courses c1
ON e1.CourseID = c1.CourseID
JOIN Enrollments e2
ON s.StudentID = e2.StudentID
JOIN Courses c2
ON e2.CourseID = c2.CourseID
WHERE c1.CourseName = 'Introduction to SQL'
AND c2.CourseName = 'Data Structures';

-- o/p:-
-- +-----------+-----------+----------+
-- | StudentID | FirstName | LastName |
-- +-----------+-----------+----------+
-- |         1 | John      | Doe      |
-- |         3 | Alex      | Brown    |
-- |         4 | Emily     | Davis    |
-- |         5 | Michael   | Wilson   |
-- |         6 | Sophia    | Taylor   |
-- +-----------+-----------+----------+
-- 5 rows in set (0.112 sec)


-- 6. Find students enrolled in either Introduction to SQL or Data Structures.

SELECT DISTINCT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e
ON s.StudentID = e.StudentID
JOIN Courses c
ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures');

-- o/p:-
-- +-----------+-----------+----------+
-- | StudentID | FirstName | LastName |
-- +-----------+-----------+----------+
-- |         1 | John      | Doe      |
-- |         2 | Jane      | Smith    |
-- |         3 | Alex      | Brown    |
-- |         4 | Emily     | Davis    |
-- |         5 | Michael   | Wilson   |
-- |         6 | Sophia    | Taylor   |
-- |         7 | Daniel    | Anderson |
-- +-----------+-----------+----------+
-- 7 rows in set (0.105 sec)


-- 7. Find the average credits for all courses.

SELECT AVG(Credits) AS AverageCredits
FROM Courses;

-- o/p:-
-- +----------------+
-- | AverageCredits |
-- +----------------+
-- |         3.5000 |
-- +----------------+
-- 1 row in set (0.043 sec)


-- 8. Find the maximum salary of instructors in the Computer Science department.

-- The current Instructors table does not contain a Salary column.
-- Therefore, we will ad the salary column and data 

ALTER TABLE Instructors
ADD Salary DECIMAL(10,2);

UPDATE Instructors
SET Salary = CASE
    WHEN InstructorID = 1 THEN 75000.00
    WHEN InstructorID = 2 THEN 68000.00
    WHEN InstructorID = 3 THEN 65000.00
END
WHERE InstructorID IN (1, 2, 3);

-- o/p:-





SELECT MAX(i.Salary) AS MaximumSalary
FROM Instructors i
JOIN Departments d
ON i.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';

-- o/p:-
-- +---------------+
-- | MaximumSalary |
-- +---------------+
-- |      75000.00 |
-- +---------------+
-- 1 row in set (0.099 sec)


-- 9. Count students enrolled in each department.

SELECT d.DepartmentID,
       d.DepartmentName,
       COUNT(DISTINCT e.StudentID) AS StudentCount
FROM Departments d
LEFT JOIN Courses c
ON d.DepartmentID = c.DepartmentID
LEFT JOIN Enrollments e
ON c.CourseID = e.CourseID
GROUP BY d.DepartmentID, d.DepartmentName;

-- o/p:-
-- +--------------+------------------+--------------+
-- | DepartmentID | DepartmentName   | StudentCount |
-- +--------------+------------------+--------------+
-- |            1 | Computer Science |            7 |
-- |            2 | Mathematics      |            6 |
-- |            3 | Physics          |            1 |
-- +--------------+------------------+--------------+
-- 3 rows in set (0.160 sec)


-- 10. INNER JOIN students and corresponding courses.

SELECT s.StudentID,
       s.FirstName,
       s.LastName,
       c.CourseID,
       c.CourseName
FROM Students s
INNER JOIN Enrollments e
ON s.StudentID = e.StudentID
INNER JOIN Courses c
ON e.CourseID = c.CourseID;

-- o/p:-
-- +-----------+-----------+----------+----------+----------------------+
-- | StudentID | FirstName | LastName | CourseID | CourseName           |
-- +-----------+-----------+----------+----------+----------------------+
-- |         1 | John      | Doe      |      101 | Introduction to SQL  |
-- |         2 | Jane      | Smith    |      102 | Data Structures      |
-- |         3 | Alex      | Brown    |      101 | Introduction to SQL  |
-- |         4 | Emily     | Davis    |      101 | Introduction to SQL  |
-- |         5 | Michael   | Wilson   |      101 | Introduction to SQL  |
-- |         6 | Sophia    | Taylor   |      101 | Introduction to SQL  |
-- |         7 | Daniel    | Anderson |      101 | Introduction to SQL  |
-- |         1 | John      | Doe      |      102 | Data Structures      |
-- |         2 | Jane      | Smith    |      102 | Data Structures      |
-- |         3 | Alex      | Brown    |      102 | Data Structures      |
-- |         4 | Emily     | Davis    |      102 | Data Structures      |
-- |         5 | Michael   | Wilson   |      102 | Data Structures      |
-- |         6 | Sophia    | Taylor   |      102 | Data Structures      |
-- |         1 | John      | Doe      |      103 | Calculus             |
-- |         3 | Alex      | Brown    |      103 | Calculus             |
-- |         4 | Emily     | Davis    |      104 | Linear Algebra       |
-- |         5 | Michael   | Wilson   |      105 | Statistics           |
-- |         6 | Sophia    | Taylor   |      106 | Discrete Mathematics |
-- |         7 | Daniel    | Anderson |      107 | Physics Fundamentals |
-- |         2 | Jane      | Smith    |      108 | Python Programming   |
-- |         3 | Alex      | Brown    |      108 | Python Programming   |
-- +-----------+-----------+----------+----------+----------------------+
-- 21 rows in set (0.014 sec)


-- -- 11. LEFT JOIN all students and corresponding courses if any.

SELECT s.StudentID,
       s.FirstName,
       s.LastName,
       c.CourseID,
       c.CourseName
FROM Students s
LEFT JOIN Enrollments e
ON s.StudentID = e.StudentID
LEFT JOIN Courses c
--ON e.CourseID = c.CourseID;

-- o/p:-
-- +-----------+-----------+----------+----------+----------------------+
-- | StudentID | FirstName | LastName | CourseID | CourseName           |
-- +-----------+-----------+----------+----------+----------------------+
-- |         1 | John      | Doe      |      103 | Calculus             |
-- |         1 | John      | Doe      |      102 | Data Structures      |
-- |         1 | John      | Doe      |      101 | Introduction to SQL  |
-- |         2 | Jane      | Smith    |      108 | Python Programming   |
-- |         2 | Jane      | Smith    |      102 | Data Structures      |
-- |         2 | Jane      | Smith    |      102 | Data Structures      |
-- |         3 | Alex      | Brown    |      108 | Python Programming   |
-- |         3 | Alex      | Brown    |      103 | Calculus             |
-- |         3 | Alex      | Brown    |      102 | Data Structures      |
-- |         3 | Alex      | Brown    |      101 | Introduction to SQL  |
-- |         4 | Emily     | Davis    |      104 | Linear Algebra       |
-- |         4 | Emily     | Davis    |      102 | Data Structures      |
-- |         4 | Emily     | Davis    |      101 | Introduction to SQL  |
-- |         5 | Michael   | Wilson   |      105 | Statistics           |
-- |         5 | Michael   | Wilson   |      102 | Data Structures      |
-- |         5 | Michael   | Wilson   |      101 | Introduction to SQL  |
-- |         6 | Sophia    | Taylor   |      106 | Discrete Mathematics |
-- |         6 | Sophia    | Taylor   |      102 | Data Structures      |
-- |         6 | Sophia    | Taylor   |      101 | Introduction to SQL  |
-- |         7 | Daniel    | Anderson |      107 | Physics Fundamentals |
-- |         7 | Daniel    | Anderson |      101 | Introduction to SQL  |
-- |         8 | Olivia    | Thomas   |     NULL | NULL                 |
-- +-----------+-----------+----------+----------+----------------------+
-- 22 rows in set (0.072 sec)




-- 12. Find courses who have more than 10 students.




-- Inserting mpore students to fire this query

INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(9, 'Liam', 'Martin', 'liam.martin@email.com', '2001-06-12', '2025-02-01'),
(10, 'Mia', 'Clark', 'mia.clark@email.com', '2000-09-25', '2025-02-02'),
(11, 'Noah', 'Lewis', 'noah.lewis@email.com', '2002-01-30', '2025-02-03'),
(12, 'Ava', 'Walker', 'ava.walker@email.com', '2001-12-08', '2025-02-04'),
(13, 'Ethan', 'Hall', 'ethan.hall@email.com', '2000-05-17', '2025-02-05');


INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(22, 9, 101, '2025-02-01'),
(23, 10, 101, '2025-02-02'),
(24, 11, 101, '2025-02-03'),
(25, 12, 101, '2025-02-04'),
(26, 13, 101, '2025-02-05');








SELECT c.CourseID,
       c.CourseName,
       COUNT(e.StudentID) AS StudentCount
FROM Courses c
JOIN Enrollments e
ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName
HAVING COUNT(e.StudentID) > 10;



-- o/p:-
-- +----------+---------------------+--------------+
-- | CourseID | CourseName          | StudentCount |
-- +----------+---------------------+--------------+
-- |      101 | Introduction to SQL |           11 |
-- +----------+---------------------+--------------+
-- 1 row in set (0.014 sec)


-- 13. Extract the year from EnrollmentDate.

SELECT EnrollmentID,
       StudentID,
       CourseID,
       YEAR(EnrollmentDate) AS EnrollmentYear
FROM Enrollments;

-- o/p:-
-- +--------------+-----------+----------+----------------+
-- | EnrollmentID | StudentID | CourseID | EnrollmentYear |
-- +--------------+-----------+----------+----------------+
-- |            1 |         1 |      101 |           2022 |
-- |            2 |         2 |      102 |           2021 |
-- |            3 |         3 |      101 |           2023 |
-- |            4 |         4 |      101 |           2023 |
-- |            5 |         5 |      101 |           2022 |
-- |            6 |         6 |      101 |           2024 |
-- |            7 |         7 |      101 |           2024 |
-- |            8 |         1 |      102 |           2022 |
-- |            9 |         2 |      102 |           2022 |
-- |           10 |         3 |      102 |           2023 |
-- |           11 |         4 |      102 |           2023 |
-- |           12 |         5 |      102 |           2022 |
-- |           13 |         6 |      102 |           2024 |
-- |           14 |         1 |      103 |           2022 |
-- |           15 |         3 |      103 |           2023 |
-- |           16 |         4 |      104 |           2023 |
-- |           17 |         5 |      105 |           2022 |
-- |           18 |         6 |      106 |           2024 |
-- |           19 |         7 |      107 |           2024 |
-- |           20 |         2 |      108 |           2022 |
-- |           21 |         3 |      108 |           2023 |
-- |           22 |         9 |      101 |           2025 |
-- |           23 |        10 |      101 |           2025 |
-- |           24 |        11 |      101 |           2025 |
-- |           25 |        12 |      101 |           2025 |
-- |           26 |        13 |      101 |           2025 |
-- +--------------+-----------+----------+----------------+
-- 26 rows in set (0.324 sec)


-- 14. Concatenate instructor first name and last name.

SELECT InstructorID,
       CONCAT(FirstName, ' ', LastName) AS InstructorName
FROM Instructors;

-- o/p:-
-- +--------------+----------------+
-- | InstructorID | InstructorName |
-- +--------------+----------------+
-- |            1 | Alice Johnson  |
-- |            2 | Bob Lee        |
-- |            3 | David Miller   |
-- |            4 | Emma Wilson    |
-- |            5 | James Taylor   |
-- +--------------+----------------+
-- 5 rows in set (0.022 sec)


-- 15. Find the running total of students enrolled in courses.



-- o/p:-



-- 16. Label students as Senior or Junior based on enrollment date.
-- Students enrolled more than 4 years ago are Senior.
-- Otherwise, they are Junior.

SELECT StudentID,
       FirstName,
       LastName,
       EnrollmentDate,
       CASE
           WHEN EnrollmentDate < DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
           THEN 'Senior'
           ELSE 'Junior'
       END AS StudentLevel
FROM Students;

-- o/p:-
-- +-----------+-----------+----------+----------------+--------------+
-- | StudentID | FirstName | LastName | EnrollmentDate | StudentLevel |
-- +-----------+-----------+----------+----------------+--------------+
-- |         1 | John      | Doe      | 2022-08-01     | Senior       |
-- |         2 | Jane      | Smith    | 2021-08-01     | Senior       |
-- |         3 | Alex      | Brown    | 2023-01-15     | Junior       |
-- |         4 | Emily     | Davis    | 2023-07-10     | Junior       |
-- |         5 | Michael   | Wilson   | 2022-09-15     | Junior       |
-- |         6 | Sophia    | Taylor   | 2024-01-20     | Junior       |
-- |         7 | Daniel    | Anderson | 2024-07-01     | Junior       |
-- |         8 | Olivia    | Thomas   | 2025-01-10     | Junior       |
-- |         9 | Liam      | Martin   | 2025-02-01     | Junior       |
-- |        10 | Mia       | Clark    | 2025-02-02     | Junior       |
-- |        11 | Noah      | Lewis    | 2025-02-03     | Junior       |
-- |        12 | Ava       | Walker   | 2025-02-04     | Junior       |
-- |        13 | Ethan     | Hall     | 2025-02-05     | Junior       |
-- +-----------+-----------+----------+----------------+--------------+
-- 13 rows in set (0.129 sec)
