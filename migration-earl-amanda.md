Setup
Create a new Rails application called 'favorite_movies'.
rails new favorite_movies  -d postgresql -T

Create the database
favorite_movies % rails db:create

Generate a Movie model with a title attribute and a category attribute
favorite_movies % rails g model FavoriteMovie

Challenges
Add five entries to the database via the Rails console
rails g migration add_columns_to_favorite_movies
FavoriteMovie.create name:"Batman", categories:"Action"
FavoriteMovie.create name:"Bridesmaids", categories:"Comedy"
FavoriteMovie.create name:"Interstellar", categories:"Suspense"
FavoriteMovie.create name:"The Purge", categories:"Thriller"
FavoriteMovie.create name:"Spiderman", categories:"Action"

Create a migration to add a new column to the database called movie_length
rails g migration add_column_length_of_movie 

Update the values of the five existing attributes to include a movie_length value
first.update(length: '3 hr')
second.update(length: '90 min')
third.update(length: '2.5 hr')
fourth.update(length: '2 hr')
fifth.update(length: '2 hr 20 min')

Generate a migration to rename the column 'category' to 'genre'
rails g migration change_name_of_category_to_genre
