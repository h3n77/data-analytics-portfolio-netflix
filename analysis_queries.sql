-- Objective: Find the top 3 most popular shows in Argentina by cumulative weeks in Top 10
-- Skills demonstrated: Aggregation (MAX), Filtering (WHERE), Grouping (GROUP BY), and Sorting.

SELECT 
    show_title, 
    MAX(cumulative_weeks_in_top_10) as max_cumulative_weeks_in_top_10
FROM 'netflix_top10_country.csv'
WHERE country_name = 'Argentina'
GROUP BY show_title
ORDER BY max_cumulative_weeks_in_top_10 DESC
LIMIT 3;
