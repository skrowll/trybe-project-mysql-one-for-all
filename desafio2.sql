SELECT
    COUNT(DISTINCT(tracks.track_id)) AS cancoes,
    COUNT(DISTINCT(artists.artist_id)) AS artistas,
    COUNT(DISTINCT(albums.album_id)) AS albuns
FROM
    SpotifyClone.tracks AS tracks
    INNER JOIN SpotifyClone.albums AS albums ON tracks.album_id = albums.album_id
    INNER JOIN SpotifyClone.artists AS artists ON artists.artist_id = albums.artist_id;
