*******
Create a new Rails application called 'favorite_movies'.
Create the database
Generate a Movie model with a title attribute and a category attribute

database-challenges git:(migration-tt-sk) ✗ cd favorite_movies
➜  favorite_movies git:(main) ✗ rails db:create
Created database 'favorite_movies_development'
Created database 'favorite_movies_test'
➜  favorite_movies git:(main) ✗ rails g model list
      invoke  active_record
      create    db/migrate/20220425175936_create_lists.rb
      create    app/models/list.rb
➜  favorite_movies git:(main) ✗ rails s


 favorite_movies git:(main) ✗ rails g model Movie title:string category:string 
      invoke  active_record
      create    db/migrate/20220425202746_create_movies.rb
      create    app/models/movie.rb



*******

Add five entries to the database via the Rails console

Movie.create title:'Dawn of Justice', category:'action'
Movie.create title:'48 Hours', category:'comedy'
Movie.create title:'Gone Girl', category:'drama'
Movie.create title:'Star Wars', category:'scifi'
Movie.create title:'Life is Beautiful', category:'foreign'


Create a migration to add a new column to the database called movie_length


Update the values of the five existing attributes to include a movie_length value
Dawn of Justice 
first = Movie.find(1)
first.update(length: "3 hours)

Movie.create title:'Dawn of Justice', category:'action', length:'3 hours'
Movie.create title:'48 Hours', category:'comedy' , length:'2 hours'
Movie.create title:'Gone Girl', category:'drama', length:'1.5 hours'
Movie.create title:'Star Wars', category:'scifi' , length:'2.5 hours'
Movie.create title:'Life is Beautiful', category:'foreign' , length:'2 hours'


Generate a migration to rename the column 'category' to 'genre'

     //favorite_movies git:(main) ✗ rails g migration renameColumn 
     // invoke  active_record
        create    db/migrate/20220426034127_rename_column.rb
      // def change
         rename_column  :movies, :category, :genre
         end
    //create_table "movies", force: :cascade do |t|
        t.string "title"
        t.string "genre"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.string "length"
    end



       favorite_movies git:(main) ✗ rails c
Loading development environment (Rails 7.0.2.3)
3.0.0 :001 >  Movies.create title:'Dawn of Justice', category:'action'
(irb):1:in `<main>': uninitialized constant Movies (NameError)
3.0.0 :002 >  Movie.create title:'Dawn of Justice', category:'action'
  TRANSACTION (0.1ms)  BEGIN
  Movie Create (7.2ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Dawn of Justice"], ["category", "action"], ["created_at", "2022-04-25 21:28:19.042507"], ["updated_at", "2022-04-25 21:28:19.042507"]]  

       favorite_movies git:(main) ✗ rails g migration add_columns_to_movies    
      invoke  active_record
      create    db/migrate/20220425215923_add_columns_to_movies.rb

       rails db:migrate



