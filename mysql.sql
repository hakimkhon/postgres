CREATE TABLE students(
    student_id serial,
    student_name varchar(50) NOT NULL,
    student_password varchar(200) NOT NULL
);
-- INSERT INTO students(student_name, student_password) VALUES('Olimjon', '3659') RETURNING *;

SELECT * FROM students;

DELETE FROM students WHERE student_id = 4


CREATE TABLE students(
    student_id serial,
    student_name varchar(50) NOT NULL,
    student_password varchar(200) NOT NULL
);
insert into adminlar (id, name, email, birthday) values (1,'Harold', 'djennaroy2@last.fm', "31/12/2019");

SELECT * FROM teachers ORDER BY country ASC --(DESC)
SELECT DISTINCT country FROM teachers; --takrorlanishsiz 
SELECT * FROM teachers WHERE gender = 'Male' AND (country = 'Chine' OR country = 'Russia')
SELECT * FROM teachers WHERE country IN ('Chine','Russia', 'USE', 'BAA')
-- SELECT * FROM teachers LIMIT 15; --dastlabki 15 tasini qaytaradi 
-- SELECT * FROM teachers OFFSET 5; --dastlabki 5 tadan tashqarilarini qaytaradi
-- SELECT * FROM teachers OFFSET 5 FETCH FIRST 8 ROW ONLY  ; --dastlabki 5 tadan tashqari boshidagi 8 tani qaytaradi
-- SELECT * FROM teachers WHERE birth_day BETWEEN DATA '2021-01-01' AND '2021-12-31'; --berilgan vaqt oralig'i
SELECT * FROM teachers WHERE email LIKE '%.com'; --.com pochtalarini qaytaradi
SELECT * FROM teachers WHERE email LIKE '%orks%'; --.com pochtalarini qaytaradi
SELECT * FROM teachers WHERE email LIKE '________@%'; --uzunligi 8 ga teng pochtalarini qaytaradi
SELECT * FROM teachers WHERE country LIKE 'P@%'; 
-- SELECT * FROM teachers WHERE country ILIKE 'p@%';
