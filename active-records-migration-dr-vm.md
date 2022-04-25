Vanessa and Darwin Challenge


Movie.create title:'Shrek', category:'Comedy'
  TRANSACTION (0.2ms)  BEGIN
  Movie Create (1.1ms)  INSERT INTO "movies" ("created_at", "updated_at", "title", "category") VALUES ($1, $2, $3, $4) RETURNING "id"  [["created_at", "2022-04-25 17:57:22.732543"], ["updated_at", "2022-04-25 17:57:22.732543"], ["title", "Shrek"], ["category", "Comedy"]]
  TRANSACTION (5.5ms)  COMMIT                                               
 =>                                                                         
#<Movie:0x000000011ba33a88                                                  
 id: 1,                                                                     
 created_at: Mon, 25 Apr 2022 17:57:22.732543000 UTC +00:00,                
 updated_at: Mon, 25 Apr 2022 17:57:22.732543000 UTC +00:00,                
 title: "Shrek",                                                            
 category: "Comedy">   

#challenge

1. #<Movie:0x0000000139628bf0
 id: 3,
 created_at: Mon, 25 Apr 2022 17:59:20.366827000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 17:59:20.366827000 UTC +00:00,
 title: "",
 category: ""> 
3.0.0 :005 > Movie.create title:'The Town', category:'Action-Thriller'
  TRANSACTION (0.2ms)  BEGIN
  Movie Create (0.3ms)  INSERT INTO "movies" ("created_at", "updated_at", "title", "category") VALUES ($1, $2, $3, $4) RETURNING "id"  [["created_at", "2022-04-25 18:00:54.176912"], ["updated_at", "2022-04-25 18:00:54.176912"], ["title", "The Town"], ["category", "Action-Thriller"]]
  TRANSACTION (5.7ms)  COMMIT                                 
 =>                                                           
####<Movie:0x000000011bac1658                                    
 id: 4,                                                       
 created_at: Mon, 25 Apr 2022 18:00:54.176912000 UTC +00:00,  
 updated_at: Mon, 25 Apr 2022 18:00:54.176912000 UTC +00:00,  
 title: "The Town",                                           
 category: "Action-Thriller">                                 
3.0.0 :006 > Movie.create title:'Scream', category:'Horror'
  TRANSACTION (0.2ms)  BEGIN
  Movie Create (0.3ms)  INSERT INTO "movies" ("created_at", "updated_at", "title", "category") VALUES ($1, $2, $3, $4) RETURNING "id"  [["created_at", "2022-04-25 18:01:37.822253"], ["updated_at", "2022-04-25 18:01:37.822253"], ["title", "Scream"], ["category", "Horror"]]
  TRANSACTION (0.5ms)  COMMIT                         
 =>                                                   
####<Movie:0x0000000149680098                            
 id: 5,                                               
 created_at: Mon, 25 Apr 2022 18:01:37.822253000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 18:01:37.822253000 UTC +00:00,
 title: "Scream",                                     
 category: "Horror"> 
 
 
 -----------------------------------
 
 3.0.0 :033 > pp Movie.all
  => 
 [#<Movie:0x0000000113109000
   id: 1,
   created_at: Mon, 25 Apr 2022 17:57:22.732543000 UTC +00:00,
   updated_at: Mon, 25 Apr 2022 17:57:22.732543000 UTC +00:00,
   title: "Shrek",
   category: "Comedy",
   length: nil>,
  #<Movie:0x0000000113108f38
   id: 3,
   created_at: Mon, 25 Apr 2022 17:59:20.366827000 UTC +00:00,
   updated_at: Mon, 25 Apr 2022 18:18:17.971118000 UTC +00:00,
   title: "Monty Python",
   category: "Comedy",
   length: 120>,
  #<Movie:0x0000000113108e70
   id: 2,
   created_at: Mon, 25 Apr 2022 17:59:16.627644000 UTC +00:00,
   updated_at: Mon, 25 Apr 2022 18:20:31.851824000 UTC +00:00,
   title: "Napolean Dynamite",
   category: "Comedy",
   length: 124>,
  #<Movie:0x0000000113108da8
   id: 4,
   created_at: Mon, 25 Apr 2022 18:00:54.176912000 UTC +00:00,
   updated_at: Mon, 25 Apr 2022 18:22:07.687730000 UTC +00:00,
   title: "The Town",
   category: "Action-Thriller",
   length: 125>,
  #<Movie:0x0000000113108ce0
   id: 5,
   created_at: Mon, 25 Apr 2022 18:01:37.822253000 UTC +00:00,
   updated_at: Mon, 25 Apr 2022 18:22:44.571745000 UTC +00:00,
   title: "Scream",
   category: "Horror",
   length: 127>] 
 3.0.0 :034 > 
 
 -------------------------------------
 
 
   create_table "movies", force: :cascade do |t|
     t.datetime "created_at", null: false
     t.datetime "updated_at", null: false
     t.string "title"
     t.string "genre"
     t.integer "length"  <===== RIGHT here
   end
 end
 
 