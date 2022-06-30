SELECT 
    users.user_name AS usuario,
    COUNT(`history`.user_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(tracks.track_duration/60), 2) AS total_minutos
FROM
    SpotifyClone.users AS users
	INNER JOIN SpotifyClone.`history` AS `history` ON users.user_id = `history`.user_id
	INNER JOIN SpotifyClone.tracks AS tracks ON `history`.track_id = tracks.track_id
GROUP BY users.user_name
ORDER BY users.user_name;
