--SELECT * FROM Genre;

--Order table by artist name
--SELECT * FROM Artist a ORDER BY a.ArtistName;

--Show only songs with artists
--SELECT *
--FROM Song s
--	LEFT JOIN Artist a ON s.ArtistId = a.Id;

--Show only artists with Pop albums
--SELECT ArtistName, Genre.Label
--FROM Artist
--	INNER JOIN Album ON Album.ArtistId = Artist.Id
--	INNER JOIN Genre ON Album.GenreId = Genre.Id
--	WHERE Genre.Label = 'Pop';

--Show only artists with Jazz or Rock albums
--SELECT ArtistName, Genre.Label
--FROM Artist
--	INNER JOIN Album ON Album.ArtistId = Artist.Id
--	INNER JOIN Genre ON Album.GenreId = Genre.Id
--	WHERE Genre.Label = 'Jazz' OR Genre.Label = 'Rock'
--	ORDER BY Genre.Label;

--Show only albums with no songs
--SELECT *
--FROM Album a
--	LEFT JOIN Song s ON s.AlbumId = a.Id
--	WHERE s.AlbumId IS NULL;

--Add one of your favorite artists
--INSERT Artist (ArtistName, YearEstablished) VALUES ('MyFav', 2000);

--Add an album from artist
--INSERT Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Album1', 2000, 1000, 'SomeLabel', 20, 13);

--Add a couple songs from artist
--INSERT Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Stuff one', 100, 2000, 10, 15, 20);
--INSERT Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Stuff 2', 150, 2000, 10, 15, 20);

--SELECT the info you just entered
--SELECT art.ArtistName, a.Title, s.Title FROM Song s
--	LEFT JOIN Album a ON s.AlbumId = a.Id
--	LEFT JOIN Artist art ON a.ArtistId = art.Id
--	WHERE ArtistName = 'De La Soul';

--Show a count of songs per album
--SELECT a.Title, COUNT(s.id) as SongsPerAlbum
--FROM Song s
--	RIGHT JOIN Album a ON s.AlbumId = a.Id
--	GROUP BY a.Title
--	ORDER BY COUNT(s.id);