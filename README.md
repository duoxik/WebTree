# WebTree

Использовал БД Posgre.
Разворачивал на Tomcat.

Условия для БД:

Таблица tree:
id int (UNIQUE, AUTO INC, PK),
value VARCHAR(255),
parent_id int

Должен быть создать один корневой элемент (1, ROOT, NULL).
