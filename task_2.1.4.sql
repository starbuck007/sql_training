create table book (book_id int primary key auto_increment,
                  title varchar(50),
                  author_id int not null,
                  genre_id int,
                  price decimal(8,2),
                  amount int,
                  foreign key (author_id) references author(author_id) on delete cascade,
                  foreign key (genre_id) references genre(genre_id) on delete set null);