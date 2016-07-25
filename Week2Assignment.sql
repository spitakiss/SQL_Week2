DROP TABLE IF EXISTS Videos;
DROP TABLE IF EXISTS Reviews;

-- Create videos table
CREATE TABLE Videos (
video_id INT PRIMARY KEY,
title VARCHAR(150) NOT NULL,
url VARCHAR(150) NOT NULL
);

-- Populate videos table
INSERT INTO Videos VALUES(1,'MySQL Tutorial','https://www.youtube.com/watch?v=yPu6qV5byu4');
INSERT INTO Videos VALUES(2,'MySQL for Beginners - Tutorial 1 - Introduction to Basics','https://www.youtube.com/watch?v=X7WBmlK8GLo');
INSERT INTO Videos VALUES(3,'MySQL Workbench Tutorial','https://www.youtube.com/watch?v=X_umYKqKaF0');

-- Create reviews table
CREATE TABLE Reviews(
review_id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
rating int NULL,
rating_desc VARCHAR(50) NULL,
video_id INT NOT NULL REFERENCES Videos
);

-- Populate reviews table
INSERT INTO Reviews VALUES(1,'Joe', 4,'Very Good!',1);
INSERT INTO Reviews VALUES(2,'Mikail', 2,'Fair',1);
INSERT INTO Reviews VALUES(3,'Nels',5, 'Best Ever!',2);
INSERT INTO Reviews VALUES(4,'Joe', 3,'Average',2);
INSERT INTO Reviews VALUES(5,'Lydia', Null, Null ,3);
INSERT INTO Reviews VALUES(6,'Joe', 1, 'Terrible',3);  

-- Select video and review details, sorted by reviewer rating (Descending)
SELECT v.title, v.url, r.rating, r.rating_desc, name AS Reviewer 
FROM videos v
INNER JOIN Reviews r
ON v.video_id = r.video_id
ORDER BY r.rating DESC
; 







