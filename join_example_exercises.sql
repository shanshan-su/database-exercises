USE join_test_db;

-- 2. Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id)
VALUES ('jenny', 'jenny@example.com', null),
       ('ava', 'ava@example.com', 2),
       ('alex', 'alex@example.com', 2),
       ('ella', 'ella@example.com', 2);

-- 3. Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

-- 4. Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query.
SELECT users.name AS user_name,
       roles.name AS role_name,
       COUNT(*)
FROM users
         JOIN roles ON users.role_id = roles.id
GROUP BY roles.name, users.name;