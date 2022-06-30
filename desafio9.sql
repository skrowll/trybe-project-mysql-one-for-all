SELECT 
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.`history` AS `history`
	INNER JOIN SpotifyClone.users AS users ON `history`.user_id = users.user_id
WHERE
    user_name LIKE 'Bill';
