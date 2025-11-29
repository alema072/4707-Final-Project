-- Inserts name of movie and release year to table.
insert into movie (title, release_year) values 
("Avengers: Endgame", 2019),
("The Dark Knight", 2008),
("Inception", 2010),
("Interstellar", 2014),
("The Matrix", 1999),
("Avater", 1997),
("Titanic", 2019),
("Jurassic Park", 1993),
("Forrest Gump", 1994),
("Star Wars: A New Hope", 1977),
("Scary Movie", 2000),
("Rush Hour", 1998),
("The Longest Yard", 2005),
("Dumb and Dumber", 1994),
("The Godfather", 1972),
("The Lion King", 1994),
("The Social Network", 2010),
("The Prestige", 2006),
("Toy Story", 1995),
("The Terminator", 1984);


-- Inserts name of director.
insert into director (first_name, last_name) values
("Anthony", "Russo"), 
("Joe", "Russo"),  
("Christopher", "Nolan"),  
("Lana", "Wachowski"), 
("Lilly", "Wachowski"), 
("James", "Cameron"),       
("Steven", "Spielberg"), 
("Robert", "Zemeckis"), 
("George", "Lucas"), 
("Keenen Ivory", "Wayans"), 
("Brett", "Ratner"), 
("Peter", "Segal"), 
("Peter", "Farrelly"), 
("Bobby", "Farrelly"), 
("Francis Ford", "Coppola"), 
("Roger", "Allers"),
("Rob", "Minkoff"), 
("David", "Fincher"), 
("John", "Lasseter"); 


-- Assigns the movie to its director/directors.
insert into movie_director (movie_id, director_id) values
(1, 45),
(1, 46),
(2, 47),
(3, 47),
(4, 47),
(5, 48),
(5, 49),
(6, 50),
(7, 50),
(8, 51),
(9, 52),
(10, 53),
(11, 54),
(12, 55),
(13, 56),
(14, 57),
(14, 58),
(15, 59),
(16, 60),
(16, 61),
(17, 62),
(18, 63),
(19, 63),
(20, 50);


-- Inserts actor names
insert into actor (first_name, last_name) values
('Robert', 'Downey Jr.'),        
('Christian', 'Bale'),           
('Leonardo', 'DiCaprio'),        
('Matthew', 'McConaughey'),      
('Keanu', 'Reeves'),             
('Sam', 'Worthington'),          
('Sam', 'Neill'),                
('Tom', 'Hanks'),                
('Mark', 'Hamill'),              
('Anna', 'Faris'),               
('Jackie', 'Chan'),              
('Adam', 'Sandler'),             
('Jim', 'Carrey'),               
('Marlon', 'Brando'),            
('Matthew', 'Broderick'),        
('Jesse', 'Eisenberg'),          
('Hugh', 'Jackman'),             
('Arnold', 'Schwarzenegger');    


-- Assigns an actor to their movie.
insert into movie_actor (movie_id, actor_id) values
(1, 40),   
(2, 41),   
(3, 42),  
(4, 43),  
(5, 44),   
(6, 45),  
(7, 42),  
(8, 46),  
(9, 47),  
(10, 48),  
(11, 49),  
(12, 50),  
(13, 51),  
(14, 52),  
(15, 53),  
(16, 54),  
(17, 55),  
(18, 56), 
(19, 47),  
(20, 57); 


-- Genre categories
insert into genre (genre_category) values 
("Horror"),
("Comdey"),
("Sci-Fi"),
("Action"),
("Adventure"),
("Thriller"),
("Drama"),
("Romance");


-- Assigns a number of genres that fit a movie.
insert into movie_genre (movie_id, genre_id) values
(1, 4), (1, 5), (1, 3),
(2, 4), (2, 6), (2, 7),
(3, 3), (3, 6), (3, 4),
(4, 3), (4, 7),
(5, 3), (5, 4),
(6, 3), (6, 4), (6, 5), (6, 8),
(7, 7), (7, 8),
(8, 3), (8, 5), (8, 6),
(9, 7), (9, 8),
(10, 3), (10, 5), (10, 4),
(11, 2), (11, 1),
(12, 2), (12, 4),
(13, 2), (13, 7),
(14, 2),
(15, 7), (15, 6),
(16, 5), (16, 7), (16, 8),
(17, 7),
(18, 7), (18, 6),
(19, 2), (19, 5),
(20, 3), (20, 4), (20, 6);


-- Comments that users leave on movies.
insert into comments (user_id, movie_id, user_text) values
(3, 1, 'Loved this movie.'),
(7, 2, 'Amazing scenes.'),
(12, 3, 'Great concept.'),
(5, 4, 'Very emotional.'),
(1, 5, 'Iconic sci-fi.'),
(10, 6, 'Fantastic visuals.'),
(4, 7, 'So moving.'),
(14, 8, 'Still a classic.'),
(9, 9, 'Great performance.'),
(2, 10, 'Epic adventure.'),
(11, 11, 'Super funny.'),
(6, 12, 'Loved the action.'),
(13, 13, 'Solid remake.'),
(8, 14, 'Always hilarious.'),
(15, 15, 'Truly iconic.'),
(16, 16, 'Beautiful story.'),
(5, 17, 'Very engaging.'),
(18, 18, 'Great suspense.'),
(4, 19, 'Fun animation.'),
(20, 20, 'Classic sci-fi.'),
(3, 6, 'Pretty cool.'),
(7, 4, 'Really touching.'),
(12, 11, 'Made me laugh.'),
(1, 12, 'Good chemistry.'),
(10, 14, 'Laugh out loud.'),
(6, 7, 'Emotional ending.'),
(9, 5, 'Mind-blowing.'),
(13, 2, 'Great acting.'),
(8, 1, 'Amazing finale.'),
(11, 3, 'Very clever.'),
(20, 8, 'Thrilling scenes.'),
(2, 9, 'Loved the cast.'),
(17, 10, 'Really fun.'),
(14, 16, 'Loved the music.'),
(3, 15, 'Top-tier film.'),
(5, 13, 'Funny moments.'),
(7, 19, 'Great for kids.'),
(16, 18, 'Nice twists.'),
(4, 17, 'Well written.'),
(1, 6, 'Very entertaining.'),
(19, 11, 'Silly fun.'),
(12, 20, 'Classic action.'),
(2, 4, 'Beautiful visuals.'),
(8, 7, 'Romantic and sad.'),
(10, 14, 'Super goofy.'),
(6, 15, 'Excellent drama.'),
(18, 3, 'Amazing plot.'),
(5, 1, 'Epic movie.'),
(9, 5, 'Timeless classic.');


-- User information.
insert into user_info (username, first_name, last_name) values
('moviefan01', 'Alex', 'Thompson'),
('cinemalover22', 'Jordan', 'Miller'),
('popcornking', 'Taylor', 'Wilson'),
('filmcritic88', 'Morgan', 'Reed'),
('moviemaster7', 'Casey', 'Brooks'),
('screenbuff34', 'Riley', 'Parker'),
('blockbusterguy', 'Jamie', 'Foster'),
('reelwatcher12', 'Drew', 'Spencer'),
('freshviews9', 'Avery', 'Coleman'),
('scenestealer77', 'Kendall', 'Hughes'),
('lights_camera', 'Bailey', 'Anderson'),
('pixelfanatic', 'Shawn', 'Warren'),
('cinemageek101', 'Elliot', 'Sanders'),
('theaterjunkie', 'Reese', 'Jacobs'),
('bigscreenqueen', 'Madison', 'Harper'),
('reviewwizard', 'Charlie', 'Douglas'),
('moviebuffx', 'Sydney', 'Roberts'),
('storyseeker44', 'Peyton', 'Murphy'),
('popcornprincess', 'Lily', 'Morgan'),
('filmfanatic55', 'Hunter', 'Gray');


-- Users giving ratings to movies.
insert into rating (user_id, movie_id, rating_level) values
(1, 1, 9),
(2, 1, 8),
(3, 2, 10),
(4, 2, 9),
(5, 3, 8),
(6, 3, 9),
(7, 4, 10),
(8, 4, 9),
(9, 5, 8),
(10, 5, 9),

(1, 6, 7),
(2, 6, 8),
(3, 7, 9),
(4, 7, 8),
(5, 8, 8),
(6, 8, 9),   
(7, 9, 10),
(8, 9, 9),
(9, 10, 8),
(10, 10, 9),

(11, 11, 7),
(12, 11, 8),
(13, 12, 9),
(14, 12, 8),
(15, 13, 7),
(16, 13, 8),
(17, 14, 9),
(18, 14, 7),
(19, 15, 10),
(20, 15, 9),

(11, 16, 8),
(12, 16, 9),
(13, 17, 8),
(14, 17, 7),
(15, 18, 9),
(16, 18, 8),
(17, 19, 9),
(18, 19, 8),
(19, 20, 9),
(20, 20, 8),

(1, 3, 9),
(2, 4, 8),
(3, 5, 7),
(4, 6, 8),
(6, 7, 8),   
(7, 10, 8),
(8, 12, 9),
(9, 14, 7),
(10, 16, 8);


-- Users that liked certain movies.
insert into likes (user_id, movie_id) values
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(9, 8),
(10, 9),

(11, 10),
(12, 11),
(13, 12),
(14, 13),
(15, 14),
(16, 15),
(17, 16),
(18, 17),
(19, 18),
(20, 19),

(1, 5),
(2, 7),
(3, 9),
(4, 11),
(5, 13),
(6, 15),
(7, 17),
(8, 19),
(9, 20),
(10, 3);


-- Users' favorite movies.
insert into favorites (user_id, movie_id) values
(1, 3),
(2, 5),
(3, 1),
(4, 7),
(5, 10),
(6, 2),
(7, 8),
(8, 4),
(9, 6),
(10, 9),

(11, 12),
(12, 14),
(13, 11),
(14, 16),
(15, 18),
(16, 13),
(17, 19),
(18, 15),
(19, 20),
(20, 17);


-- Shows the relationship between a movie and its directors.
select movie.movie_id, movie.title, director.director_id, first_name, last_name from movie_director join movie on movie.movie_id = movie_director.movie_id
join director on director.director_id = movie_director.director_id order by movie_id;


-- Shows the relationship between a movie and its actors.
select movie.movie_id, movie.title, actor.actor_id, first_name, last_name from movie_actor 
join movie on movie.movie_id = movie_actor.movie_id
join actor on actor.actor_id = movie_actor.actor_id order by movie.title;


-- Shows the relationship between a movie and its genres.
select movie.movie_id, movie.title, genre.genre_id, genre_category from movie_genre 
join movie on movie.movie_id = movie_genre.movie_id
join genre on genre.genre_id = movie_genre.genre_id order by movie.title;


-- Shows the comments that users have left on movies.
select user_info.first_name, user_info.last_name, user_info.user_id, user_info.username, movie.title, comments.user_text from comments
join user_info on user_info.user_id = comments.user_id
join movie on movie.movie_id = comments.movie_id;


-- Shows the ratings that users have given to movies.
select rating_id, user_info.user_id, user_info.username, movie.movie_id, movie.title, rating_level from rating
join user_info on user_info.user_id = rating.user_id
join movie on movie.movie_id = rating.movie_id;


-- Shows the movies that users liked.
select user_info.user_id, user_info.username, movie.movie_id, title from likes
join user_info on user_info.user_id = likes.user_id
join movie on movie.movie_id = likes.movie_id;


-- Shows a users favorite movies.
select favorites_id, user_info.user_id, user_info.username, movie.movie_id, title from favorites
join user_info on user_info.user_id = favorites.user_id
join movie on movie.movie_id = favorites.movie_id;




