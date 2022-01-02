-- 1
-- What are the column names?
SELECT * 
FROM orders
LIMIT 10;

-- The column names are id, user_id, order_date, restaurant_id, item_name, and special_instructions

-- 2 
-- How recent is this data?
SELECT DISTINCT order_date
FROM orders
ORDER BY order_date DESC;
-- The most recent data point is from June 30th, 2017 

-- 3
-- Instead of selecting all the columns using *, 
-- write a query that selects only the special_instructions column.

-- Limit the result to 20 rows.

SELECT special_instructions
FROM orders
LIMIT 20;

-- 4 
-- Can you edit the query so that we are only 
-- returning the special instructions that are not empty?

SELECT special_instructions
FROM ORDERS 
WHERE special_instructions IS NOT NULL;

-- 5
-- Let’s go even further and sort the instructions 
-- in alphabetical order (A-Z).

SELECT special_instructions
FROM ORDERS 
WHERE special_instructions IS NOT NULL
ORDER BY special_instructions;

-- 6
-- Let’s search for special instructions that have the word ‘sauce’.

-- Are there any funny or interesting ones? 

SELECT special_instructions 
FROM orders
WHERE special_instructions LIKE '%sauce%';

-- 7
-- Let’s search for special instructions that have the word ‘door’.
-- Any funny or interesting ones?

SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%door%';


-- 8
-- Let’s search for special instructions that have the word ‘box’.
-- Any funny or interesting ones?

SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%box%';

-- 9
-- Instead of just returning the special instructions, also return their order ids.

-- For more readability:
-- Rename id as ‘#’
-- Rename special_instructions as ‘Notes’

SELECT special_instructions AS "notes", id AS "#"
FROM orders
WHERE special_instructions LIKE '%box%';

-- 10
-- Challenge
-- They have asked you to query the customer who made the phrase. 
-- Return the item_name restaurant_id, and user_id for the person created the phrase.

SELECT item_name, restaurant_id, user_id
FROM orders
WHERE special_instructions = "Draw a narwhal on the delivery box.";

