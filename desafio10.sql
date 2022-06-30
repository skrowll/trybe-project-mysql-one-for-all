SELECT 
    tracks.track_name AS nome,
    COUNT(`history`.track_id) AS reproducoes
FROM
    SpotifyClone.tracks AS tracks
	INNER JOIN SpotifyClone.`history` AS `history` ON tracks.track_id = `history`.track_id
	INNER JOIN SpotifyClone.users AS users ON users.user_id = `history`.user_id
	INNER JOIN SpotifyClone.plans AS plans ON plans.plan_id = users.plan_id
WHERE
    plan_name = 'gratuito' OR plan_name = 'pessoal'
GROUP BY `history`.track_id
ORDER BY tracks.track_name;
