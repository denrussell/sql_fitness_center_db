CREATE DATABASE fitness_center_db;

USE fitness_center_db;
CREATE TABLE Members (
id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
age INT
);

CREATE TABLE WorkoutSessions (
session_id INT PRIMARY KEY,
member_id INT,
session_date DATE,
session_time VARCHAR(50),
activity VARCHAR(255),
FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age) 
VALUES
(1, 'Dennis Del Corro', 30),
(2, 'Maricris Lavilla', 30);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES
(1, 1, '2025-02-10', '9:00 AM', 'cardio'),
(2, 2, '2025-02-11', '10:00 AM', 'yoga');

SELECT * FROM Members;
SELECT * FROM WorkoutSessions;

-- TASK 2
INSERT INTO Members (id, name, age)
VALUES
(3, 'Jane Doe', 55);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES
(3, 3, '2025-02-11', '7:00 AM', 'physical therapy');

UPDATE WorkoutSessions
SET session_time = '7:00 PM'
WHERE member_id = 3;

-- TASK 3
INSERT INTO Members (id, name, age)
VALUES
(4, 'John Smith', 60);

DELETE FROM Members
WHERE id = 4;