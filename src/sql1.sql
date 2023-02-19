INSERT INTO employee(
first_name, last_name, gender, age)
VALUES ('Elena', 'Sidorova', 'female', 28
);
INSERT INTO employee(
first_name, last_name, gender, age)
VALUES ('Denis', 'Nikolaev', 'male', 35
);
INSERT INTO employee(
first_name, last_name, gender, age)
VALUES ('Artur', 'Pirojkov', 'female', 38
);
INSERT INTO employee(
first_name, last_name, gender, age)
VALUES ('Artur', 'Pirojkov', 'female', 38
);
UPDATE employee SET gender = 'male' WHERE id = 6;

SELECT first_name AS Имя,
last_name AS Фамилия
FROM employee GROUP BY Имя, Фамилия;

SELECT * FROM employee WHERE age < 30 OR age > 50;

SELECT * FROM employee WHERE age BETWEEN 30 AND 50;

SELECT * FROM employee ORDER BY last_name DESC;

SELECT * FROM employee WHERE first_name LIKE '____%';

UPDATE employee SET first_name = 'Ivan' WHERE id = 5;
UPDATE employee SET first_name = 'Anna' WHERE id = 4;

SELECT first_name AS Имя,
SUM(age) AS Суммарный_возраст
FROM employee GROUP BY Имя;

SELECT first_name AS Имя,
MIN(age) AS Самый_юный_возраст
FROM employee GROUP BY Имя;

SELECT first_name AS Имя,
MAX(age) AS Максимальный_возраст
FROM employee
GROUP BY Имя
HAVING count(first_name) > 1
ORDER BY Максимальный_возраст;
