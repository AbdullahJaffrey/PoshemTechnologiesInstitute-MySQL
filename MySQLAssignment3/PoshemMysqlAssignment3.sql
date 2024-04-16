-- Poshem Technologies MYSQL Assignment 3

-- Question 01:

/* 

One of our investors is interested in the films we carry and how many actors are listed for
each film title can you pull a list of all titles, and figure out how many actors are associated
with each title. (hint use left join, decide which table should be your left table).

*/

-- Answer 01: 
USE mavenmovies;

SELECT 
    film_text.title, COUNT(film_actor.actor_id) AS no_of_actors
FROM
    film_actor
        LEFT JOIN
    actor ON actor.actor_id = film_actor.actor_id
        LEFT JOIN
    film_text ON film_text.film_id = film_actor.film_id
GROUP BY film_text.title
ORDER BY no_of_actors DESC
LIMIT 10;

-- Question 02:

/* 

Using LEFT JOIN, INNER JOIN AND RIGHT JOIN, pull out the following records, compare your
answer across the three tables (i.e LEFT JOIN, INNER JOIN AND RIGHT JOIN) and make a brief
summary of your observations. The information’s are:
 Actor first name
 Actor last name
 Actor award first name
 Actor award last name
 Awards
Ensure to use your ALIAS where necessary

*/

-- Answer 02: 

-- By using the left join: 
SELECT 
    actor.actor_id,
    actor.first_name,
    actor.last_name,
    actor_award.first_name AS awarded_actors_fn,
    actor_award.last_name AS awarded_actors_ln,
    actor_award.awards
FROM
    actor
        LEFT JOIN
    actor_award ON actor.actor_id = actor_award.actor_id;

-- By using the inner join: 
SELECT 
    actor.actor_id,
    actor.first_name,
    actor.last_name,
    actor_award.first_name AS awarded_actors_fn,
    actor_award.last_name AS awarded_actors_ln,
    actor_award.awards
FROM
    actor
        INNER JOIN
    actor_award ON actor.actor_id = actor_award.actor_id;
    
-- By using the righter join: 
SELECT 
    actor.actor_id,
    actor.first_name,
    actor.last_name,
    actor_award.first_name AS awarded_actors_fn,
    actor_award.last_name AS awarded_actors_ln,
    actor_award.awards
FROM
    actor
        RIGHT JOIN
    actor_award ON actor.actor_id = actor_award.actor_id;

/*
    
NOTE: 

LEFT JOIN: Retrieves all records from the left table and the matched records from the right table.
INNER JOIN: Retrieves records that have matching values in both tables.
RIGHT JOIN: Retrieves all records from the right table and the matched records from the left table.

*/

-- Question 03:

/* 

The business wants you to pull out records of customer id with less than 15 rental all-time

*/

-- Answer 03: 

SELECT 
    rental.customer_id, COUNT(rental.rental_id) AS no_of_rental
FROM
    rental
GROUP BY rental.customer_id
HAVING no_of_rental < 15
ORDER BY no_of_rental DESC;

/*

NOTE:

HAVING: Filters data based on group conditions after the GROUP BY clause has been applied.
WHERE: Filters individual rows based on specified conditions before any grouping is performed.

*/


-- Question 04:

/* 

Can you help pull out a count of film, along with the average, min, and max rental rating,
group by replacement cost

*/

-- Answer 04: 

SELECT 
    replacement_cost,
    COUNT(film_id) AS no_of_films,
    AVG(rental_rate) AS mean_rr,
    MIN(rental_rate) AS min_rr,
    MAX(rental_rate) AS max_rr
FROM
    film
GROUP BY replacement_cost
ORDER BY no_of_films DESC;


-- Question 05:

/* 

We need information on rating, rental duration, replacement cost and count of film id

*/

-- Answer 05: 

SELECT 
    rating,
    rental_duration,
    replacement_cost,
    COUNT(film_id) AS no_of_films
FROM
    film
GROUP BY rating , rental_duration , replacement_cost
ORDER BY rental_duration DESC
LIMIT 20;


-- For more information, please visit ChatGPT.

-- Thankyou for your time.

