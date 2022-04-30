<!-- Create a new Rails application called 'favorite_movies'.
Create the database -->
  $ rails new my_rails_app_migration -d postgresql -T
  $ cd my_rails_app_migration
  $ rails db:create
  $ rails generate model FavoriteMovie
  $ rails db:migrate


  $ rails g migration add_column_to_favorite_movie

<!-- Generate a Movie model with a title attribute and a category attribute -->
## add_column :favorite_movies, :title, :string
## add_column :favorite_movies, :category, :string 
<!-- in migration file to add model, column name, data type  -->


rails db:migrate
<!-- to migrate columns -->

rails c
<!-- to enter rails console -->

<!-- Add five entries to the database via the Rails console -->
FavoriteMovie.create title:"Shrek", category:"Comedy" 
FavoriteMovie.create title:"Pearl Harbor", category:"Action"
FavoriteMovie.create title:"Star Wars", category:"Sci-Fi"
FavoriteMovie.create title:"Donnie Darko", category:"Sci-Fi/Drama"
FavoriteMovie.create title:"When Harry Met Sally", category:"ROM-COM"


exit
exit rails console 


<!-- Create a migration to add a new column to the database called movie_length -->
$ rails g migration add_column_to_favorite_movie
add_column :favorite_movies, :movie_length, :string 
% in migration file to add model, column name, data type 

rails db:migrate


% Update the values of the five existing attributes to include a movie_length value
% entered rails console 
length=FavoriteMovie.first 
length.update(movie_length:"1H 30m")

length2=FavoriteMovie.find(2) 
length2.update(movie_length:"3H 3m")

length3=FavoriteMovie.find(3) 
length3.update(movie_length:"2H 1m")

length4=FavoriteMovie.find(4) 
length4.update(movie_length:"1H 53m")

length5=FavoriteMovie.find(5) 
length5.update(movie_length:"1H 36m")

exit
% exit rails console


% Generate a migration to rename the column 'category' to 'genre'
rails generate migration change_name_of_category_to_genre
% enter in migrate file
rename_column :favorite_movies, :category, :genre
rails db:migrate 
