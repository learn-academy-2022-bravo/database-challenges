Favorite Movies Challenge
Setup

# Create a new Rails application called 'favorite_movies'.

$ rails new migrations_practice -d postgresql -T
"titled migrations_practice"

# Create the database 
Created database 'migrations_practice_development'
Created database 'migrations_practice_test'

# Generate a Movie model with a title attribute and a category attribute
1. create    db/migrate/20220425180609_create_movies.rb
      create    app/models/movie.rb
2. rails g migration add_columns_to_movies 
3. rails db:migrate 

Output on Schema: 
create_table "movies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "category"

# Challenges
# Add five entries to the database via the Rails console
$ rails c
Movie.create title:"Arrival", category:"Sci-fi" 
Movie.create title:"Pineapple Express", category:"Comedy" 
Movie.create title:"Batman", category:"Sci-fi" 
Movie.create title:"The Grand Budapest Hotel", category:"Drama" 
Movie.create title: "Sherlock Holmes", category:"Action" 

Output: 
3.0.0 :007 > Movie.all
  Movie Load (0.4ms)  SELECT "movies".* FROM "movies"
 =>                                                                         
[#<Movie:0x00000001319d6340                                                 
  id: 1,                                                                    
  created_at: Mon, 25 Apr 2022 18:56:46.777128000 UTC +00:00,               
  updated_at: Mon, 25 Apr 2022 18:56:46.777128000 UTC +00:00,               
  title: "Arrival",                                                         
  category: "Sci-fi">,                                                      
 #<Movie:0x00000001319d6278                                                 
  id: 2,                                                                    
  created_at: Mon, 25 Apr 2022 18:57:25.862887000 UTC +00:00,               
  updated_at: Mon, 25 Apr 2022 18:57:25.862887000 UTC +00:00,               
  title: "Pineapple Express",                                               
  category: "Comedy">,                                                      
 #<Movie:0x00000001319d61b0                                                 
  id: 3,
  created_at: Mon, 25 Apr 2022 18:57:31.359436000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 18:57:31.359436000 UTC +00:00,
  title: "Batman",
  category: "Sci-fi">,
 #<Movie:0x00000001319d60e8
  id: 4,
  created_at: Mon, 25 Apr 2022 18:57:37.626538000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 18:57:37.626538000 UTC +00:00,
  title: "The Grand Budapest Hotel",
  category: "Drama">,
 #<Movie:0x00000001319d6020
  id: 5,
  created_at: Mon, 25 Apr 2022 18:57:44.534545000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 18:57:44.534545000 UTC +00:00,
  title: "Sherlock Holmes",
  category: "Action">] 

# Create a migration to add a new column to the database called movie_length

create_table "movies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "category"
    t.string "movie_length"
  end


# Update the values of the five existing attributes to include a movie_length value
first = Movie.find(1)
first.update(movie_length: '90 mins')

second = Movie.find(2)
second.update(movie_length: '91 mins')

third = Movie.find(3)
third.update(movie_length: '92 mins')

fourth = Movie.find(4)
fourth.update(movie_length: '93 mins')

fifth = Movie.find(5)
fifth.update(movie_length: '94 mins')


Output 
[#<Movie:0x0000000106de4458                                  
  id: 1,                                                     
  created_at: Mon, 25 Apr 2022 18:56:46.777128000 UTC +00:00,
  updated_at: Tue, 26 Apr 2022 03:15:43.730558000 UTC +00:00,
  title: "Arrival",                                          
  category: "Sci-fi",                                        
  movie_length: "90 mins">,                                  
 #<Movie:0x0000000106de4390                                  
  id: 2,                                                     
  created_at: Mon, 25 Apr 2022 18:57:25.862887000 UTC +00:00,
  updated_at: Tue, 26 Apr 2022 03:20:53.338270000 UTC +00:00,
  title: "Pineapple Express",                                
  category: "Comedy",                                        
  movie_length: "91 mins">,
 #<Movie:0x0000000106de42c8
  id: 3,
  created_at: Mon, 25 Apr 2022 18:57:31.359436000 UTC +00:00,
  updated_at: Tue, 26 Apr 2022 03:21:06.558930000 UTC +00:00,
  title: "Batman",
  category: "Sci-fi",
  movie_length: "92 mins">,
 #<Movie:0x0000000106de4200
  id: 4,
  created_at: Mon, 25 Apr 2022 18:57:37.626538000 UTC +00:00,
  updated_at: Tue, 26 Apr 2022 03:21:26.770730000 UTC +00:00,
  title: "The Grand Budapest Hotel",
  category: "Drama",
  movie_length: "93 mins">,
 #<Movie:0x0000000106de4138
  id: 5,
  created_at: Mon, 25 Apr 2022 18:57:44.534545000 UTC +00:00,
  updated_at: Tue, 26 Apr 2022 03:21:47.406786000 UTC +00:00,
  title: "Sherlock Holmes",
  category: "Action",
  movie_length: "94 mins">] 

# Generate a migration to rename the column 'category' to 'genre'

create_table "movies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "genre"
    t.string "movie_length"
  end

