SELECT COUNT(*) FROM player_stats
;

ALTER TABLE player_stats
MODIFY COLUMN pts DOUBLE,
MODIFY COLUMN reb DOUBLE,
MODIFY COLUMN ast DOUBLE,
MODIFY COLUMN ts_pct DOUBLE,
MODIFY COLUMN usg_pct DOUBLE,
MODIFY COLUMN player_height DOUBLE,
MODIFY COLUMN player_weight DOUBLE,
MODIFY COLUMN gp INT
;

SELECT player_name, team_abbreviation, season, pts
FROM player_stats
WHERE era = "2020s"
ORDER BY pts DESC
LIMIT 5
;

SELECT player_name, season, pts, usg_pct, ts_pct
FROM player_stats
WHERE era = "2020s"
ORDER BY pts DESC
LIMIT 5
;

WITH PlayerImprovement AS (
	SELECT player_name,
			season,
            gp,
			pts,
            LAG(pts) OVER (PARTITION BY player_name ORDER BY season) AS prev_season_pts,
            LAG(gp) OVER (PARTITION BY player_name ORDER BY season) AS prev_season_gp
	FROM player_stats
)
SELECT player_name,
		prev_season_pts,
		pts AS current_pts,
        ROUND((pts - prev_season_pts), 1) AS raw_pts_increase,
        ROUND(((pts - prev_season_pts) / prev_season_pts) * 100, 1) AS pct_increase
FROM PlayerImprovement
WHERE season = "2022-23" AND gp >= 40 AND prev_season_gp >= 40
ORDER BY raw_pts_increase DESC
LIMIT 5
;

SELECT era,
		ROUND(AVG(player_height), 1) AS avg_height,
        ROUND(AVG(player_weight), 1) AS avg_weight
FROM player_stats
GROUP BY era
ORDER BY era ASC
;

SELECT 
	CASE
		WHEN age <= 22 THEN "1. Rookie"
        WHEN age >= 30 THEN "2. Veteran"
        WHEN age BETWEEN 23 AND 29 THEN "3. Player in his Prime"
	END AS experience_level,
    ROUND(AVG(pts), 1) AS avg_pts,
    ROUND(AVG(reb), 1) AS avg_reb,
    ROUND(AVG(net_rating), 1) AS avg_impact
FROM player_stats
GROUP BY experience_level
ORDER BY experience_level ASC
;

SELECT team_abbreviation,
		COUNT(player_name) AS top_performers_count
FROM player_stats
WHERE pts >= 20
GROUP BY team_abbreviation
ORDER BY top_performers_count DESC
LIMIT 5
;

SELECT player_name,
		team_abbreviation,
        gp,
        ROUND((pts * 0.4) + ((reb+ast) * 0.3) + (ts_pct * 100 * 0.3), 1) AS mvp_score
FROM player_stats
WHERE season = '2022-23' AND gp >= 50
ORDER BY mvp_score DESC
LIMIT 5
;

WITH RankedSeasons AS (
    SELECT player_name,
			season,
			pts,
			reb,
			ast,
			ROUND((pts * 0.4) + ((reb+ast) * 0.3) + (ts_pct * 100 * 0.3), 1) AS mvp_score,
			ROW_NUMBER() OVER (PARTITION BY player_name ORDER BY ROUND((pts * 0.4) + ((reb+ast) * 0.3) + (ts_pct * 100 * 0.3), 1) DESC) as season_rank
    FROM player_stats
    WHERE gp >= 50
)
SELECT player_name, 
		season AS best_season,
		pts,
		reb,
		ast,
		mvp_score
FROM RankedSeasons
WHERE season_rank = 1
ORDER BY mvp_score DESC
LIMIT 5
;




    






















