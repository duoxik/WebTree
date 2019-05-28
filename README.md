# WebTree

За основу взял Spring MVC. Данные хранил в базе данных Postgre. Разворачивал проект на Tomcat.

Условия для БД:

Таблица tree:
id int (UNIQUE, AUTO INC, PK),
value VARCHAR(255),
parent_id int

В Spring конфиге указаны username(postgres), password(postgres), имя бд webappdb.

Должен быть создать один корневой элемент (1, ROOT, NULL).
