-- #1. How many actors are there with the last name 'Wahlberg'?
SELECT last_name
FROM actor 
WHERE last_name like 'Wahlberg';

-- Answer: 2

-- #2. How many payments were made between $3.99 and $5.99?
SELECT count(amount)
FROM payment 
WHERE amount BETWEEN 3.99 and 5.99;

-- Answer: 5,602

-- #3. What film does the store have the most of?
SELECT film_id, count(film_id) AS film_count
FROM inventory
GROUP BY film_id
ORDER BY film_count DESC

-- Answer: 72 films have 8 copies 

-- #4. How many customers have the last name 'William'?
SELECT last_name 
FROM customer 
WHERE last_name like 'William';

-- Answer: 0

-- #5. What store employee sold the most rentals?
SELECT count(staff_id)
FROM rental
WHERE staff_id = 1

SELECT count(staff_id)
FROM rental 
WHERE staff_id = 2

-- Answer: staff_id 1 with 8,040 

-- #6. How many different district names are there?
SELECT count(DISTINCT district)
FROM address;

-- Answer: 378

-- #7. What film has the most actors in it?
SELECT film_id, count(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY count(actor_id) DESC;

-- Answer: film_id 508 with 15 actors

-- #8. From store_id 1, how many customers have a last name ending with 'es'?
SELECT last_name, store_id
FROM customer 
WHERE last_name LIKE '%es'

-- Answer: 13

-- #9. How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430? 
SELECT amount, count(rental_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(rental_id) > 250;

-- Answer: 3

-- #10. (Part 1) Within the film table, how many rating categories are there?
SELECT count(DISTINCT rating) FROM film

-- Answer: 5

-- #10. (Part 2) And what rating has the most movies total?
SELECT rating, count(rating)
FROM film 
GROUP BY rating

-- Answer: PG-13