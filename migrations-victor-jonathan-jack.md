Rails files to make note of:
- Gemfile
- app/controllers
- app/models
- app/views
- config/routes.rb
- db
- 


  $ rails new learn_band -d postgresql -T
  $ cd learn_band
  $ rails db:create
  $ rails g model BandMember
  $ rails db:migrate
## Favorite Movies Challenge

### Setup
- Create a new Rails application called 'favorite_movies'.
 1188  rails new favorite_movies -d postgresql -T
 1189  ls
 1190  cd favorite_movies
 1191  rails db:create
 1192  code .
 1193* ls
 1194* pwd
- Create the database
 1191  rails db:create
- Generate a Movie model with a title attribute and a category attribute
done in one move 1196
 1196  rails generate model Movie title:string category:string
 1197  rails db:migrate



### Challenges
- Add five entries to the database via the Rails console

rails c => starts the rails terminal 


Movie.create title: "Die Hard I", category: "action"
Movie.create title: "Spider-Man", category: "action"
Movie.create title: "Scream", category: "horror"
Movie.create title: "Dune", category: "Sci-Fi"
Movie.create title: "Jack", category: "horror



- Create a migration to add a new column to the database called movie_length


rails generate migration add_columns_to_list


Open the migrate file generated

      add_column :movies, :movie_length_minutes, :integer


  $ rails db:migrate













- Update the values of the five existing attributes to include a movie_length value

Movie.find(1).update(movie_length_minutes: 152)
Movie.find(2).update(movie_length_minutes: 162)
Movie.find(3).update(movie_length_minutes: 165)
Movie.find(4).update(movie_length_minutes: 133)
Movie.find(5).update(movie_length_minutes: 187)







- Generate a migration to rename the column 'category' to 'genre'
https://edgeguides.rubyonrails.org/active_record_migrations.html#using-the-change-method
https://edgeguides.rubyonrails.org/active_record_migrations.html



rails generate migration rename_colum





    rename_column :movies, :category, :genre

 1199  rails c
 1200  ls
 1201  pwd
 1202  rails generate migration add_columns_to_list\n
 1203  rails db:migrate
 1204* rails c
 1205  rails generate migration rename_colum\n
 1206  rails db:migrate
 1207* rails c
