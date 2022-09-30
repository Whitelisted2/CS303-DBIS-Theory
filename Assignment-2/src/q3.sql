-- Approach 1: user 1 does training lesson 1 multiple times, and we want count of that. 
-- (Also assuming we just want *user details* of such users)
SELECT user_id, username
FROM users
WHERE user_id IN (
    SELECT user_id
    FROM training_details
    GROUP BY user_id, training_id, training_date
    HAVING COUNT(user_training_id) > 1
);

-- Approach 2: user 1 does multiple lessons per day, which may or may not be distinct.
-- Here, we want number of lessons done by a user in a day.
-- (This time let's assume we want user details and training date as well)
SELECT users.user_id, username, training_date, COUNT(*) AS num_of_times
FROM users, training_details
WHERE users.user_id = training_details.user_id
GROUP BY user_id, training_date
HAVING COUNT(*) > 1
ORDER BY user_id ASC, training_date DESC;