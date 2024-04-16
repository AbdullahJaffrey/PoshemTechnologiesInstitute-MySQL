UPDATE mavenmovies.actor 
SET 
    last_name = 'WALE'
WHERE
    actor_id = 14 AND first_name = 'Vivien'
        AND last_name = 'BERGEN';

SELECT 
    *
FROM
    actor
WHERE
    first_name LIKE 'Viv%';

DELETE FROM actor 
WHERE
    actor_id = 14 AND first_name = 'Vivien'
    AND last_name = 'WALE';
