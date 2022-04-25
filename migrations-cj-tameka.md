<!-- Create a new Rails application called 'favorite_movies'. -->

    $rails new favorite_movies -d postgresql -T

<!-- Create the database -->
    $rails db:create

<!-- Generate a Movie model with a title attribute and a category attribute -->

    $rails generate model Movies :title :category

<!-- Add five entries to the database via the Rails console -->
    $Movie.create title: "David Attenburough Stuff", category: "Documentary"

<!-- Create a migration to add a new column to the database called movie_length -->

    $rails generate migration add_column_movie_length

<!-- Update the values of the five existing attributes to include a movie_length value -->

    $movie1 = Movie.find 1
    $movie1.movie_length = runtime
    $movie1.save
<!-- Generate a migration to rename the column 'category' to 'genre' -->

    $rails generate migration rename_column_category_to_genre
      --  added Ruby code block for migration --
    $rails db:migrate
