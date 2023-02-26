CREATE TABLE city (
    city_id BIGSERIAL NOT NULL PRIMARY KEY,
        city_name VARCHAR(50)
);

ALTER TABLE employee ADD COLUMN city_id INT;

INSERT INTO city (city_name) VALUES ('Москва');

INSERT INTO city (city_name) VALUES ('Самара');

INSERT INTO city (city_name) VALUES ('Санкт-Петербург');

INSERT INTO city (city_name) VALUES ('Волгоград');

INSERT INTO city (city_name) VALUES ('Казань');

INSERT INTO city (city_name) VALUES ('Екатеринбург');

ALTER TABLE employee ADD FOREIGN KEY (city_id) REFERENCES city (city_id);

UPDATE employee SET city_id = 1 WHERE id = 1;

UPDATE employee SET city_id = 2 WHERE id = 2;

UPDATE employee SET city_id = 1 WHERE id = 4;

UPDATE employee SET city_id = 3 WHERE id = 5;

UPDATE employee SET city_id = 4 WHERE id = 6;

    //Задание 2

SELECT employee.first_name, employee.last_name, city.city_name
FROM employee JOIN city
                   ON employee.city_id = city.city_id;

SELECT city.city_name, employee.first_name, employee.last_name
FROM employee RIGHT JOIN city
                         ON employee.city_id = city.city_id;

SELECT employee.first_name, city.city_name
FROM employee FULL OUTER JOIN city
                              ON employee.city_id = city.city_id;

SELECT employee.first_name, city.city_name
FROM employee CROSS JOIN city;