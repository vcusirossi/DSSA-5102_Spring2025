-- Melissa Laurino
-- MySQL Workbench Spotify Class Example

-- Test query
SELECT * FROM song;

-- CASE statement
SELECT master_metadata_album_artist_name AS artist,
        COUNT(*) AS play_count,
        CASE
                WHEN COUNT(*) >= 3000 THEN 'My favorites!'
                WHEN COUNT(*) >= 2000 THEN 'My second favorites!'
                WHEN COUNT(*) >= 1000 THEN 'My third favorites!'
                ELSE 'Meh'
            END AS popularity
        FROM song
        WHERE master_metadata_album_artist_name IS NOT NULL
        GROUP BY master_metadata_album_artist_name
        ORDER BY play_count DESC
        LIMIT 20;
        
-- NULL
SELECT *
        FROM song s
        WHERE s.master_metadata_album_artist_name IS NULL
        LIMIT 10;

-- INSERT INTO
-- (I do not want to actually run this!)
-- INSERT INTO song (master_metadata_track_name, master_metadata_album_artist_name, master_metadata_album_album_name)
        -- VALUES 
           -- ('Song One', 'Artist One', 'Album One'),
           -- ('Song Two', 'Artist Two', 'Album Two'),
		   -- ('Song Three', 'Artist Three', 'Album Three');

-- MIN() and MAX()
	SELECT 
            s.master_metadata_album_artist_name AS artist,
            MIN(lh.date) AS first_listened,
            MAX(lh.date) AS last_listened
        FROM song s
        JOIN listening_history lh ON s.id = lh.song_id
        WHERE s.master_metadata_album_artist_name IN ('Amy Winehouse', 'Hozier', 'Noah Cyrus')
        GROUP BY s.master_metadata_album_artist_name
        ORDER BY first_listened;
        
-- MIN(), MAX(), and CASE
SELECT 
            s.master_metadata_album_artist_name AS artist,
            MIN(lh.date) AS first_listened,
            MAX(lh.date) AS last_listened,
            DATEDIFF(MAX(lh.date), MIN(lh.date)) AS days_between,
            CASE
                WHEN DATEDIFF(MAX(lh.date), MIN(lh.date)) >= 1825 THEN 'Life time Listener'
                WHEN DATEDIFF(MAX(lh.date), MIN(lh.date)) BETWEEN 365 AND 1824 THEN 'On Your Way to a Life time Listener'
                WHEN DATEDIFF(MAX(lh.date), MIN(lh.date)) BETWEEN 1 AND 364 THEN 'Recently Discovered'
                ELSE 'You Can Hardly Call Yourself a Listener'
            END AS listening_category
        FROM song s
        JOIN listening_history lh ON s.id = lh.song_id
        WHERE s.master_metadata_album_artist_name IS NOT NULL
        GROUP BY s.master_metadata_album_artist_name
        ORDER BY first_listened
        LIMIT 10;
        
-- AVG()
SELECT 
	AVG(ms_played) AS average_play_time_ms
	FROM listening_history;
    
-- CASE, MIN/MAX, AVG
SELECT 
            s.master_metadata_track_name AS song,
            s.master_metadata_album_artist_name AS artist,
            COUNT(*) AS total_plays,
            MIN(lh.ms_played) AS shortest_play,
            MAX(lh.ms_played) AS longest_play,
            AVG(lh.ms_played) AS average_play,
            CASE
                WHEN AVG(lh.ms_played) >= 340000 THEN 'Most Likely to Listen to in Entirety'
                WHEN AVG(lh.ms_played) >= 240000 THEN 'Listened to Most of the Song'
                WHEN AVG(lh.ms_played) >= 120000 THEN 'Hardly Listen to the Song'
                ELSE 'Skipped Often'
            END AS skip_or_no_skip
        FROM song s
        JOIN listening_history lh ON s.id = lh.song_id
        GROUP BY s.master_metadata_track_name, s.master_metadata_album_artist_name
        HAVING COUNT(*) > 10
        ORDER BY average_play DESC
        LIMIT 50;
        
-- DELETE
DELETE FROM listening_history
WHERE date < '2013-01-01';
