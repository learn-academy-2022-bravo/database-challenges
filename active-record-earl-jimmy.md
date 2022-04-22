## Create a new Rails app named 'rolodex_challenge'.
## Create the database. The output in the terminal should look like this:

rails db:create
## Created database 'rolodex_challenge_development'
## Created database 'rolodex_challenge_test'

## Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.

rails generate model Person first_name:string last_name:string phone:string


## Run a migration to set up the database.

rails db:migrate
== 20220422174956 CreatePeople: migrating =====================================
-- create_table(:people


## Open up Rails console.
rails c

Actions

## Add five family members into the Person table in the Rails console.
 Person.create first_name: 'jimmy', last_name: 'velasquez', phone:'1
234567789' *5

## Retrieve all the items in the database.
3.0.0 :013 > Person.all
  Person Load (0.5ms)  SELECT "people".* FROM "people"
 =>                                                           
[#<Person:0x00000001103df7c8                                  
  id: 1,                                                      
  first_name: "earl",                                         
  last_name: "nicholson",                                     
  phone: "1234567890",                                        
  created_at: Fri, 22 Apr 2022 17:58:43.916099000 UTC +00:00, 
  updated_at: Fri, 22 Apr 2022 17:58:43.916099000 UTC +00:00>,
 #<Person:0x00000001103df688                                  
  id: 2,                                                      
  first_name: "earl",                                         
  last_name: "nicholson",                                     
  phone: "12\n34567890",                                      
  created_at: Fri, 22 Apr 2022 17:59:09.062060000 UTC +00:00, 
  updated_at: Fri, 22 Apr 2022 17:59:09.062060000 UTC +00:00>,
 #<Person:0x00000001103df598
  id: 3,
  first_name: "earl",
  last_name: "nicholson",
  phone: "12\n34567890",
  created_at: Fri, 22 Apr 2022 17:59:14.848725000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 17:59:14.848725000 UTC +00:00>,
 #<Person:0x00000001103df4d0
  id: 4,
  first_name: "earl",
  last_name: "nicholson",
  phone: "1234567890",
  created_at: Fri, 22 Apr 2022 18:00:08.029914000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:00:08.029914000 UTC +00:00>,
 #<Person:0x00000001103df408
  id: 5,
  first_name: "jimmy",
  last_name: "velasquez",
  phone: "1234567789",
  created_at: Fri, 22 Apr 2022 18:01:12.433771000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:01:12.433771000 UTC +00:00>] 
3.0.0 :014 > 


## Add yourself to the Person table.
3.0.0 :026 > Person.all
  Person Load (0.4ms)  SELECT "people".* FROM "people"
 =>                                                           
[#<Person:0x0000000110766b58                                  
  id: 4,                                                      
  first_name: "earl",                                         
  last_name: "nicholson",                                     
  phone: "1234567890",                                        
  created_at: Fri, 22 Apr 2022 18:00:08.029914000 UTC +00:00, 
  updated_at: Fri, 22 Apr 2022 18:00:08.029914000 UTC +00:00>,
 #<Person:0x0000000110766a90                                  
  id: 5,                                                      
  first_name: "jimmy",                                        
  last_name: "velasquez",                                     
  phone: "1234567789",                                        
  created_at: Fri, 22 Apr 2022 18:01:12.433771000 UTC +00:00, 
  updated_at: Fri, 22 Apr 2022 18:01:12.433771000 UTC +00:00>,
 #<Person:0x00000001107669c8
  id: 1,
  first_name: "toni",
  last_name: "nicholson",
  phone: "1234567890",
  created_at: Fri, 22 Apr 2022 17:58:43.916099000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:07:40.475944000 UTC +00:00>,
 #<Person:0x0000000110766900
  id: 2,
  first_name: "van",
  last_name: "nicholson",
  phone: "12\n34567890",
  created_at: Fri, 22 Apr 2022 17:59:09.062060000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:10:09.263807000 UTC +00:00>,
 #<Person:0x0000000110766838
  id: 3,
  first_name: "LJ",
  last_name: "nicholson",
  phone: "12\n34567890",
  created_at: Fri, 22 Apr 2022 17:59:14.848725000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:10:39.476755000 UTC +00:00>] 
3.0.0 :027 > 



## Retrieve all the entries that have the same last_name as you.

Person.where last_name:'nicholson'

id: 4,
  first_name: "earl",
  last_name: "nicholson",
  phone: "1234567890",
  created_at: Fri, 22 Apr 2022 18:00:08.029914000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:00:08.029914000 UTC +00:00>,
 #<Person:0x0000000110a1cf50
  id: 1,
  first_name: "toni",
  last_name: "nicholson",
  phone: "1234567890",
  created_at: Fri, 22 Apr 2022 17:58:43.916099000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:07:40.475944000 UTC +00:00>,
 #<Person:0x0000000110a1ce88
  id: 2,
  first_name: "van",
  last_name: "nicholson",
  phone: "12\n34567890",
  created_at: Fri, 22 Apr 2022 17:59:09.062060000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:10:09.263807000 UTC +00:00>,
 #<Person:0x0000000110a1cdc0
  id: 3,
  first_name: "LJ",
  last_name: "nicholson",
  phone: "12\n34567890",
  created_at: Fri, 22 Apr 2022 17:59:14.848725000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 18:10:39.476755000 UTC +00:00>] 
3.0.0 :031 > 


## Update the phone number of the last entry in the database.

fifth.update phone:901123456

id: 5,                                                   
 first_name: "jimmy",                                     
 last_name: "velasquez",                                  
 phone: "901123456",                                      
 created_at: Fri, 22 Apr 2022 18:01:12.433771000 UTC +00:00,
 updated_at: Fri, 22 Apr 2022 18:16:37.193160000 UTC +00:00> 
3.0.0 :033 > 

## Retrieve the first_name of the third Person in the database.

Person.find(3).first_name
  Person Load (0.5ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]                                             
 => "LJ"  

 Stretch Challenges

## Update all the family members with the same last_name as you, to have the same phone number as you.

everyone=Person.where last_name:'nicholson'
 everyone.update phone:3127737080


## Remove all family members that do not have your last_name.

 fifth.destroy