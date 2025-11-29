-- Name of movie and release year.
create table movie (
    movie_id int primary key auto_increment,
    title varchar(50) not null,
    release_year int,
    unique (title, release_year)
);


-- Name of director
create table director (
    director_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    unique (first_name, last_name)
);


-- Name of actor
create table actor (
    actor_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    unique (first_name, last_name)
);


-- Pairing the movie_id to the director_id
create table movie_director (
    movie_id int not null,
    director_id int not null,
    primary key (movie_id, director_id),
    foreign key (movie_id) references movie(movie_id),
    foreign key (director_id) references director(director_id),
    unique (movie_id, director_id)
);


-- Pairing the movie_id to the actor_id
create table movie_actor (
    actor_id int not null,
    movie_id int not null,
    primary key (movie_id, actor_id),
    foreign key (movie_id) references movie(movie_id),
    foreign key (actor_id) references actor(actor_id),
    unique (movie_id, actor_id)
);


-- Genre of a movie
create table genre (
    genre_id int primary key auto_increment,
    genre_category varchar(50) not null,
    unique (genre_category)
);


-- Pairing movie_id to the genre_id
create table movie_genre (
    movie_id int not null,
    genre_id int not null,
    primary key (movie_id, genre_id),
    foreign key (movie_id) references movie(movie_id),
    foreign key (genre_id) references genre(genre_id),
    unique (movie_id, genre_id)
);


-- This will be comments that the user wants to put on a movie.  
create table comments (
    comments_id int primary key auto_increment,
    user_id int not null,
    movie_id int not null,
    user_text varchar(500) not null
);


-- Information about a user.
create table user_info (
    user_id int primary key auto_increment,
    username varchar(50) not null unique,
    first_name varchar(50),
    last_name varchar(50),
    unique (username)
);


-- This is a table that holds the ratings that users give to movies.
create table rating (
    rating_id int primary key auto_increment,
    user_id int not null,
    movie_id int not null,
    rating_level int not null,
    foreign key (user_id) references user_info(user_id),
    foreign key (movie_id) references movie(movie_id),
    unique (user_id, movie_id)
);


-- This will be the number of people that liked a certain movie.
create table likes (
    user_id int not null,
    movie_id int not null,
    primary key (user_id, movie_id),
    foreign key (user_id) references user_info(user_id),
    foreign key (movie_id) references movie(movie_id),
    unique (user_id, movie_id)
);


-- This will be a list of a users favorite movies.
create table favorites (
    favorites_id int primary key auto_increment,
    user_id int not null,
    movie_id int not null,
    date_added date default (curdate()),
    foreign key (user_id) references user_info(user_id),
    foreign key (movie_id) references movie(movie_id),
    unique (user_id, movie_id)
);


-- View that gives the average rating of all the movies.
create view ranked_list as
select 
    movie.movie_id,
    movie.title,
    avg(rating_level) as avg_rating
from rating
join movie on movie.movie_id = rating.movie_id
group by movie_id
order by avg_rating desc;


-- Trigger that will activate when a user does not insert a rating number in range of 1-10.
delimiter $$
create trigger rating_level_range
    before insert on rating
    for each row
        begin
            if new.rating_level < 1 or new.rating_level > 10 then
                signal sqlstate '45000'
                set message_text = 'Rating must be between 1 and 10';
            end if;
        end$$
delimiter ;






