USE spotify;

LOAD DATA LOCAL INFILE '/tmp/dataset/spotify_albums.csv'
INTO TABLE spotify_albums
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



LOAD DATA LOCAL INFILE '/tmp/dataset/spotify_artists.csv'
INTO TABLE spotify_artists
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



LOAD DATA LOCAL INFILE '/tmp/dataset/spotify_tracks.csv'
INTO TABLE spotify_tracks
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
