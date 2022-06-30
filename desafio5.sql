SELECT 
    tracks.track_name AS cancao,
    COUNT(`history`.track_id) AS reproducoes
FROM
    SpotifyClone.tracks AS tracks
	INNER JOIN SpotifyClone.`history` AS `history` ON tracks.track_id = `history`.track_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
