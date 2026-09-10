University Course Management System

Project Description

The University Course Management System is a MySQL database project developed as an institute-level SQL project. It is designed to manage information about university students, courses, instructors, departments, and enrollments.

The project demonstrates how SQL can be used to create and manage related tables, perform CRUD operations, and retrieve useful information using different SQL queries.

Getting Started

These instructions will help you set up and run the project on your local computer.

Prerequisites

You need:

MySQL Server

MySQL Workbench or MySQL Command Line

Installing

Open MySQL Workbench or MySQL Command Line.

Open the SQL project file.

Run the SQL script.

The database will be created using:

CREATE DATABASE UniversityCourseManagement;
USE UniversityCourseManagement;

The required tables and sample data will then be created.

Database Tables

The project contains the following tables:

Students – stores student details.

Courses – stores course information.

Instructors – stores instructor details.

Enrollments – stores student enrollment information.

Departments – stores department information.

SQL Concepts Used

The project demonstrates:

Database and table creation

INSERT, SELECT, UPDATE, and DELETE

CRUD operations

ALTER TABLE

Aggregate functions such as COUNT(), AVG(), and MAX()

GROUP BY and HAVING

INNER JOIN

LEFT JOIN

DISTINCT

CASE

Date functions

String functions such as CONCAT()

Filtering using WHERE

Example

An example query used in the project is:

SELECT *
FROM Students
WHERE EnrollmentDate > '2022-12-31';

This query displays students whose enrollment date is after 31 December 2022.

How to Run the Project

Start MySQL.

Open the SQL file in MySQL Workbench.

Execute the complete script.

The database, tables, and sample records will be created.

Execute the queries individually to view their results.

Project Purpose

The purpose of this project is to understand the basic and intermediate concepts of SQL and learn how related university data can be stored, managed, and retrieved using a relational database.

Author

Gosai Kishal
