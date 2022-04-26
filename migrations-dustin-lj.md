
Generate a Movie model with a title attribute and a category attribute
      invoke  active_record
      create    db/migrate/20220425174547_create_movies.rb
      create    app/models/movie.rb

Add five entries to the database via the Rails console
 => 
[#<Movie:0x00000001194b5360
  id: 1,
  title: "The Departed",
  category: "drama",
  created_at: Mon, 25 Apr 2022 17:49:30.156749000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 17:49:30.156749000 UTC +00:00>,
 #<Movie:0x00000001194b5220
  id: 2,
  title: "Inception",
  category: "sci-fi",
  created_at: Mon, 25 Apr 2022 17:50:27.787713000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 17:50:27.787713000 UTC +00:00>,
 #<Movie:0x00000001194b5158
  id: 3,
  title: "Blow",
  category: "drama",
  created_at: Mon, 25 Apr 2022 17:51:01.508000000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 17:51:01.508000000 UTC +00:00>,
 #<Movie:0x00000001194b5090
  id: 4,
  title: "Wedding Crashers",
  category: "comedy",
  created_at: Mon, 25 Apr 2022 17:51:35.737272000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 17:51:35.737272000 UTC +00:00>,
 #<Movie:0x00000001194b4fc8
  id: 5,
  title: "The Other Guys",
  category: "comedy",
  created_at: Mon, 25 Apr 2022 17:52:51.101722000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 17:52:51.101722000 UTC +00:00>] 
3.0.0 :007 > 
3.0.0 :010 > the_other_guys.update movie_length:"130mins"
  TRANSACTION (0.3ms)  BEGIN
  Movie Update (0.4ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2022-04-25 18:11:48.420346"], ["movie_length", "130mins"], ["id", 5]]                                           
  TRANSACTION (5.3ms)  COMMIT                                                 
 => true                                                                      
3.0.0 :011 > 

Create a migration to add a new column to the database called movie_length
     invoke  active_record
      create    db/migrate/20220425175708_add_movie_length_to_movie.rb

== 20220425175708 AddMovieLengthToMovie: migrating ============================
-- add_column(:movies, :movie_length, :string)
   -> 0.0067s
== 20220425175708 AddMovieLengthToMovie: migrated (0.0068s) ===================




Update the values of the five existing attributes to include a movie_length value
3.0.0 :002 > the_departed.update movie_length:"90mins"
  TRANSACTION (0.4ms)  BEGIN
  Movie Update (7.4ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2022-04-25 18:07:04.729325"], ["movie_length", "90mins"], ["id", 1]]                                              
  TRANSACTION (1.5ms)  COMMIT                                                   
 => true    

  TRANSACTION (0.2ms)  BEGIN
  Movie Update (0.6ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2022-04-25 18:08:57.126301"], ["movie_length", "120min"], ["id", 2]]                                          
  TRANSACTION (4.9ms)  COMMIT                                               
 => true  



Generate a migration to rename the column 'category' to 'genre'
== 20220425181422 ChangeNameOfColumnCategoryToGenre: migrating ================
-- rename_column(:movies, :category, :genre)
   -> 0.0030s
== 20220425181422 ChangeNameOfColumnCategoryToGenre: migrated (0.0030s) =======



[#<Movie:0x0000000127cbc208
  id: 1,
  title: "The Departed",
  genre: "drama",
  created_at: Mon, 25 Apr 2022 17:49:30.156749000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 18:07:04.729325000 UTC +00:00,
  movie_length: "90mins">,
 #<Movie:0x0000000127d7c008
  id: 2,
  title: "Inception",
  genre: "sci-fi",
  created_at: Mon, 25 Apr 2022 17:50:27.787713000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 18:08:57.126301000 UTC +00:00,
  movie_length: "120min">,
 #<Movie:0x0000000157b23f38
  id: 3,
  title: "Blow",
  genre: "drama",
  created_at: Mon, 25 Apr 2022 17:51:01.508000000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 18:09:53.034143000 UTC +00:00,
  movie_length: "126min">,
 #<Movie:0x0000000157b23e20
  id: 4,
  title: "Wedding Crashers",
  genre: "comedy",
  created_at: Mon, 25 Apr 2022 17:51:35.737272000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 18:10:33.501630000 UTC +00:00,
  movie_length: "102mins">,
 #<Movie:0x0000000157b23d58
  id: 5,
  title: "The Other Guys",
  genre: "comedy",
  created_at: Mon, 25 Apr 2022 17:52:51.101722000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 18:11:48.420346000 UTC +00:00,
  movie_length: "130mins">] 