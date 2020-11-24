-- Language School Database Core & Advanced Requirements
-- Yogini Vassaramo & Nathalie Fernando

USE languageschool;

-- 1. View
CREATE OR REPLACE VIEW student_skills AS
SELECT
	students.Student_id,
	students.First_name,
	courses.Course_id,
	courses.Language,
	courses.Level,
    placement_test_scores.Total_score,
	placement_test_scores.Level_Allocation
FROM students
JOIN placement_test_scores
ON students.Student_id = placement_test_scores.Student_id
JOIN payments
ON students.Student_id = payments.Student_id
JOIN courses
ON payments.Course_id = courses.Course_id
WHERE courses.Language  like 'French'
WITH CHECK OPTION;


SELECT * FROM student_skills
WHERE student_skills.Course_id = '201'
ORDER BY student_skills.Total_score ASC;

-- 2. Stored Function
DROP FUNCTION IF EXISTS at_capacity;

DELIMITER //
CREATE FUNCTION at_capacity(
  Course_id INT
)
RETURNS VARCHAR(25)
DETERMINISTIC
BEGIN
  DECLARE course_capacity VARCHAR(25);
  DECLARE Tot INT;
	DECLARE cap INT;
	SELECT Total_students, Max_capacity
	INTO Tot, cap
	FROM courses
	INNER JOIN classroom_location
	ON classroom_location.Location_id = courses.Location_id
	WHERE courses.Course_id = Course_id;
  IF tot = cap THEN
    SET course_capacity = 'FULL';
  ELSEIF tot < cap THEN
    SET course_capacity = 'SPACES AVAILABLE';
  ELSEIF tot > cap THEN
    SET course_capacity = 'OVERSUBSCRIBED';
  END IF;
  RETURN (course_capacity);
END//Course_id
DELIMITER ;

SELECT courses.Course_id, at_capacity(Course_id) FROM courses
WHERE Course_id = 101;

SELECT * FROM classroom_location;

-- 3. Stored Procedure (Calculate total placement allocation test scores and assign classes- update columns)

DROP PROCEDURE IF EXISTS levelallocation;

DELIMITER //
CREATE PROCEDURE levelallocation()
BEGIN
DECLARE Level_Allocation VARCHAR(45);
DECLARE Total_Score INT;
UPDATE placement_test_scores
    SET Total_Score = (placement_test_scores.Reading_Score + placement_test_scores.Writing_Score + placement_test_scores.Speaking_Score)/3,
    Level_Allocation = (CASE
        WHEN placement_test_scores.Total_Score <= 30 THEN 'Beginner'
		WHEN placement_test_scores.Total_Score BETWEEN 30 AND 70 THEN 'Intermediate'
		WHEN placement_test_scores.Total_Score >70 THEN 'Advanced'
        ELSE 'No Information'
	END);
END //
DELIMITER ;

CALL levelallocation();

-- 4. Trigger 

DROP TABLE IF EXISTS reminders;
CREATE TABLE reminders
(Reminder_id INT AUTO_INCREMENT,
Student_id INT NOT NULL,
Email VARCHAR(55) NOT NULL,
Message VARCHAR(255),
PRIMARY KEY (Reminder_id));
         
DROP TRIGGER IF EXISTS after_registration_reminder;         

DELIMITER //
CREATE TRIGGER after_registration_reminder
AFTER INSERT
ON students FOR EACH ROW
BEGIN
        
        INSERT INTO reminders(Student_id, Email, Message)
		SELECT NEW.Student_id, NEW.Email, 'Thanks for registering onto one of our courses. 
        Please ensure that your course fee has been paid in full to confirm your place.'
        FROM students
        GROUP BY NEW.Student_id;
		
END //
DELIMITER ;

INSERT INTO students (Student_id, First_name, Last_name, DOB, Telephone, Email, Postcode)
VALUES 
(5074,'Ang','Blacon','1999-04-29','07566601292','AngBlacon54@gmail.com','BL8 9YT');
select * from reminders;


-- 5. Event

DROP EVENT IF EXISTS archive_students_payments;
DELIMITER //
CREATE 
	EVENT `archive_students_payments` 
	ON SCHEDULE EVERY 1 YEAR STARTS '2022-01-29 17:00:00' 
	DO 
    BEGIN
		-- Copy over old student records on the last day of school year
		SELECT Student_id, First_name, Last_name, DOB, Telephone, Email, Postcode
        INTO OUTFILE 'D:/CFG/Introduction_to_Data_Science_SQL/Exercises/students_archive.csv'
        FROM students;
	    
		-- copy associated payment records
		SELECT payment_id, Student_id, Course_id, Course_fee 
		INTO OUTFILE 'D:/CFG/Introduction_to_Data_Science_SQL/Exercises/payments_archive.csv'
        FROM payments;
		
        DELETE FROM students;
        DELETE FROM payments;
        
	END //
DELIMITER ;

SHOW EVENTS;


-- 6. Query with a Subquery with GROUP BY and HAVING
-- Outputs the number of students over the age of 21,  with unique birthdays and who are studying Spanish at Intermediate Level.

SELECT COUNT(*) FROM (
	SELECT
	students.student_id, First_name, Last_name, DOB,
	Language, Level_Allocation, COUNT(*)
	FROM students
	INNER JOIN
	placement_test_scores
	ON
	students.student_id =placement_test_scores.student_id
	GROUP BY DOB
	HAVING Language = 'Spanish' 
	AND DATEDIFF(NOW(), DOB) / 365.2425 > 21 
	AND Level_Allocation = 'Intermediate') 
AS subquery;
