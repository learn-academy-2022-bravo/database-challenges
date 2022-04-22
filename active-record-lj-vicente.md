As a developer, I have been tasked with creating a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

Create a new Rails app named 'rolodex_challenge'.
rails new rolodex -d postgresql -T

Create the database. The output in the terminal should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'
➜  rolodex git:(main) ✗ rails db:create
Created database 'rolodex_development'
Created database 'rolodex_test'
➜  rolodex git:(main) ✗ rails s


Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.
ring phone:string
      invoke  active_record
      create    db/migrate/20220422180350_create_people.rb
      create    app/models/person.rb


Run a migration to set up the database.
rails db:migrate

Open up Rails console.
Actions
 rails c

Add five family members into the Person table in the Rails console.
[#<Person:0x000000010782d090                                  
  id: 1,                                                      
  first_name: "Denisse",                                      
  last_name: "Saldana",                                       
  phone: "619-999-1111",                                      
  created_at: Fri, 22 Apr 2022 18:16:10.306503000 UTC +00:00, 
  updated_at: Fri, 22 Apr 2022 18:16:10.306503000 UTC +00:00>,
 #<Person:0x000000010782cd70                                  
  id: 2,                                                      
  first_name: "Joshua",                                       
  last_name: "Saldana",                                       
  phone: "619-222-2722",                                      
  created_at: Fri, 22 Apr 2022 18:19:21.995226000 UTC +00:00, 
  updated_at: Fri, 22 Apr 2022 18:19:21.995226000 UTC +00:00>,
 #<Person:0x000000010782ca50
  id: 4,
  first_name: "Jonathan",
  last_name: "Saldana",
  phone: "619-654-9899",
  created_at: Fri, 22 Apr 2022 18:20:59.774152000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:20:59.774152000 UTC +00:00>,
 #<Person:0x000000010782c730
  id: 5,
  first_name: "Chantelle",
  last_name: "Saldana",
  phone: "619-555-7676",
  created_at: Fri, 22 Apr 2022 18:21:29.003035000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:21:29.003035000 UTC +00:00>,
 #<Person:0x000000010782c410
  id: 6,
  first_name: "Kristy",
  last_name: "Saldana",
  phone: "619-333-1234",
  created_at: Fri, 22 Apr 2022 18:21:54.874344000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:21:54.874344000 UTC +00:00>] 
3.0.0 :015 > 

Retrieve all the items in the database.
[#<Person:0x000000010782d090                                  
  id: 1,                                                      
  first_name: "Denisse",                                      
  last_name: "Saldana",                                       
  phone: "619-999-1111",                                      
  created_at: Fri, 22 Apr 2022 18:16:10.306503000 UTC +00:00, 
  updated_at: Fri, 22 Apr 2022 18:16:10.306503000 UTC +00:00>,
 #<Person:0x000000010782cd70                                  
  id: 2,                                                      
  first_name: "Joshua",                                       
  last_name: "Saldana",                                       
  phone: "619-222-2722",                                      
  created_at: Fri, 22 Apr 2022 18:19:21.995226000 UTC +00:00, 
  updated_at: Fri, 22 Apr 2022 18:19:21.995226000 UTC +00:00>,
 #<Person:0x000000010782ca50
  id: 4,
  first_name: "Jonathan",
  last_name: "Saldana",
  phone: "619-654-9899",
  created_at: Fri, 22 Apr 2022 18:20:59.774152000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:20:59.774152000 UTC +00:00>,
 #<Person:0x000000010782c730
  id: 5,
  first_name: "Chantelle",
  last_name: "Saldana",
  phone: "619-555-7676",
  created_at: Fri, 22 Apr 2022 18:21:29.003035000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:21:29.003035000 UTC +00:00>,
 #<Person:0x000000010782c410
  id: 6,
  first_name: "Kristy",
  last_name: "Saldana",
  phone: "619-333-1234",
  created_at: Fri, 22 Apr 2022 18:21:54.874344000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:21:54.874344000 UTC +00:00>] 
3.0.0 :015 > 

Add yourself to the Person table.
#<Person:0x00000001079a4180                                                     
 id: 7,                                                                         
 first_name: "Vicente",                                                         
 last_name: "Saldana",                                                          
 phone: "619-777-9876",                                                         
 created_at: Fri, 22 Apr 2022 18:37:48.409864000 UTC +00:00,                    
 updated_at: Fri, 22 Apr 2022 18:37:48.409864000 UTC +00:00> 
3.0.0 :019 > 


Retrieve all the entries that have the same last_name as you.
[#<Person:0x0000000124754a98                                  
  id: 1,                                                      
  first_name: "Denisse",                                      
  last_name: "Saldana",                                       
  phone: "619-999-1111",                                      
  created_at: Fri, 22 Apr 2022 18:16:10.306503000 UTC +00:00, 
  updated_at: Fri, 22 Apr 2022 18:16:10.306503000 UTC +00:00>,
 #<Person:0x00000001247549d0                                  
  id: 4,                                                      
  first_name: "Jonathan",                                     
  last_name: "Saldana",                                       
  phone: "619-654-9899",                                      
  created_at: Fri, 22 Apr 2022 18:20:59.774152000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:20:59.774152000 UTC +00:00>,
 #<Person:0x0000000124754908
  id: 5,
  first_name: "Chantelle",
  last_name: "Saldana",
  phone: "619-555-7676",
  created_at: Fri, 22 Apr 2022 18:21:29.003035000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:21:29.003035000 UTC +00:00>,
 #<Person:0x0000000124754840
  id: 6,
  first_name: "Kristy",
  last_name: "Saldana",
  phone: "619-333-1234",
  created_at: Fri, 22 Apr 2022 18:21:54.874344000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:21:54.874344000 UTC +00:00>,
 #<Person:0x0000000124754778
  id: 7,
  first_name: "Vicente",
  last_name: "Saldana",
  phone: "619-777-9876",
  created_at: Fri, 22 Apr 2022 18:37:48.409864000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:37:48.409864000 UTC +00:00>] 
3.0.0 :024 > 



Update the phone number of the last entry in the database.
 #<Person:0x0000000124564828
  id: 7,
  first_name: "Vicente",
  last_name: "Saldana",
  phone: "619-777-7777",
  created_at: Fri, 22 Apr 2022 18:37:48.409864000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:53:16.881388000 UTC +00:00>] 
3.0.0 :027 > 

Retrieve the first_name of the third Person in the database.
3.0.0 :017 > Person.find(4).first_name='Jonathan'
  Person Load (1.1ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
 => "Jonathan" 
3.0.0 :018 > 


Stretch Challenges
Update all the family members with the same last_name as you, to have the same phone number as you.
[#<Person:0x000000010799e0c8
  id: 1,
  first_name: "Denisse",
  last_name: "Saldana",
  phone: "619-777-7777",
  created_at: Fri, 22 Apr 2022 18:16:10.306503000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 19:00:20.606834000 UTC +00:00>,
 #<Person:0x000000010799e000
  id: 4,
  first_name: "Jonathan",
  last_name: "Saldana",
  phone: "619-777-7777",
  created_at: Fri, 22 Apr 2022 18:20:59.774152000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 19:00:20.622069000 UTC +00:00>,
 #<Person:0x000000010799df38
  id: 5,
  first_name: "Chantelle",
  last_name: "Saldana",
  phone: "619-777-7777",
  created_at: Fri, 22 Apr 2022 18:21:29.003035000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 19:00:20.649433000 UTC +00:00>,
 #<Person:0x000000010799de70
  id: 6,
  first_name: "Kristy",
  last_name: "Saldana",
  phone: "619-777-7777",
  created_at: Fri, 22 Apr 2022 18:21:54.874344000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 19:00:20.651530000 UTC +00:00>,
 #<Person:0x000000010799dda8
  id: 7,
  first_name: "Vicente",
  last_name: "Saldana",
  phone: "619-777-7777",
  created_at: Fri, 22 Apr 2022 18:37:48.409864000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:53:16.881388000 UTC +00:00>] 
3.0.0 :029 > 



Remove all family members that do not have your last_name.
3.0.0 :030 > Joshua= Person.find(2)
  Person Load (0.9ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]                                   
 =>                                                                   
#<Person:0x000000011019a008                                           
...                                                                   
3.0.0 :031 > Joshua.destroy
  TRANSACTION (0.3ms)  BEGIN
  Person Destroy (6.6ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 2]]                                                                  
  TRANSACTION (0.3ms)  COMMIT                                         
 =>                                                                   
#<Person:0x000000011019a008                                           
 id: 2,                                                               
 first_name: "Joshua",                                                
 last_name: "Gerardo",                                                
 phone: "619-222-2722",                                       
 created_at: Fri, 22 Apr 2022 18:19:21.995226000 UTC +00:00,  
 updated_at: Fri, 22 Apr 2022 18:46:53.211533000 UTC +00:00>  