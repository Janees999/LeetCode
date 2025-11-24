WITH first_login AS (
    SELECT 
        player_id,
        MIN(event_date) AS first_day
    FROM Activity
    GROUP BY player_id
),
next_day AS (
    SELECT 
        f.player_id
    FROM first_login f
    JOIN Activity a
      ON f.player_id = a.player_id
     AND a.event_date = f.first_day + INTERVAL '1 day'
)
SELECT 
    ROUND(
        (SELECT COUNT(*)::decimal FROM next_day) / 
        (SELECT COUNT(*)::decimal FROM first_login),
        2
    ) AS fraction;
