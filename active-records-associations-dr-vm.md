 Create a new rails application and database
Create a model for owner
 
 bank_app git:(main) ✗ rails db:migrate
== 20220425210235 CreateOwners: migrating =====================================
-- create_table(:owners)
   -> 0.0069s
== 20220425210235 CreateOwners: migrated (0.0069s) ============================

3.0.0 :002 > Owner.all
  Owner Load (0.8ms)  SELECT "owners".* FROM "owners"
 => []                                                       
3.0.0 :003 > 

-----------------------------------------
Create a model for credit card
A credit card has a number, an expiration date, and an owner

➜  bank_app git:(main) ✗ rails generate model Credit_Card number:string expiration:string Owner_id:integer
      invoke  active_record
      create    db/migrate/20220425211034_create_credit_cards.rb
      create    app/models/credit_card.rb
➜  bank_app git:(main) ✗ rail  

--------------------------------------------

Create three owners and save them in the database

3.0.0 :001 > Owner.create(name: 'Bob', address:'372 Windmill Lane', cards:3)
  TRANSACTION (0.2ms)  BEGIN
  Owner Create (6.8ms)  INSERT INTO "owners" ("name", "address", "cards", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["name", "Bob"], ["address", "372 Windmill Lane"], ["cards", 3], ["created_at", "2022-04-25 21:22:16.308395"], ["updated_at", "2022-04-25 21:22:16.308395"]]                 
  TRANSACTION (5.3ms)  COMMIT                                                   
 =>                                                                             
#<Owner:0x000000010c8ed1b0                                                      
 id: 1,                                                                         
 name: "Bob",                                                                   
 address: "372 Windmill Lane",                                                  
 cards: 3,                                                                      
 created_at: Mon, 25 Apr 2022 21:22:16.308395000 UTC +00:00,                    
 updated_at: Mon, 25 Apr 2022 21:22:16.308395000 UTC +00:00>                    
3.0.0 :002 > Owner.create(name: 'Jill', address:'123 Top of the Hill Drive', car
ds: 8)
  TRANSACTION (0.2ms)  BEGIN
  Owner Create (0.5ms)  INSERT INTO "owners" ("name", "address", "cards", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["name", "Jill"], ["address", "123 Top of the Hill Drive"], ["cards", 8], ["created_at", "2022-04-25 21:23:38.574359"], ["updated_at", "2022-04-25 21:23:38.574359"]]        
  TRANSACTION (0.7ms)  COMMIT                                                   
 =>                                                                             
#<Owner:0x000000010c5f6d80                                                      
 id: 2,                                                                         
 name: "Jill",                                                                  
 address: "123 Top of the Hill Drive",                                          
 cards: 8,                                                                      
 created_at: Mon, 25 Apr 2022 21:23:38.574359000 UTC +00:00,                    
 updated_at: Mon, 25 Apr 2022 21:23:38.574359000 UTC +00:00>                    
3.0.0 :003 > Owner.create(name:'Marvin', address: '225 Mars Drive', cards: 5)
  TRANSACTION (0.2ms)  BEGIN
  Owner Create (0.4ms)  INSERT INTO "owners" ("name", "address", "cards", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["name", "Marvin"], ["address", "225 Mars Drive"], ["cards", 5], ["created_at", "2022-04-25 21:24:53.206352"], ["updated_at", "2022-04-25 21:24:53.206352"]]                 
  TRANSACTION (4.9ms)  COMMIT                                                   
 =>                                                                             
#<Owner:0x000000012e531a18                                                      
 id: 3,                                                                         
 name: "Marvin",                                                                
 address: "225 Mars Drive",                                                     
 cards: 5,                                                                      
 created_at: Mon, 25 Apr 2022 21:24:53.206352000 UTC +00:00,                    
 updated_at: Mon, 25 Apr 2022 21:24:53.206352000 UTC +00:00>                    
3.0.0 :004 > 


Create a credit card in the database for each owner

jill.credit_cards.create(number:'2222 2222 2222 2222', expiration:'12/22')
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (4.3ms)  INSERT INTO "credit_cards" ("number", "expiration", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "2222 2222 2222 2222"], ["expiration", "12/22"], ["owner_id", 2], ["created_at", "2022-04-25 22:38:20.134588"], ["updated_at", "2022-04-25 22:38:20.134588"]]
  TRANSACTION (0.7ms)  COMMIT
 => 
#<CreditCard:0x000000012b81fa70
 id: 1,
 number: "2222 2222 2222 2222",
 expiration: "12/22",
 owner_id: 2,
 created_at: Mon, 25 Apr 2022 22:38:20.134588000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 22:38:20.134588000 UTC +00:00> 
3.0.0 :003 > 




3.0.0 :004 > marvin.credit_cards.create(number:'2222 2222 2222 3222', expiration:'12/12'
)
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.6ms)  INSERT INTO "credit_cards" ("number", "expiration", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "2222 2222 2222 3222"], ["expiration", "12/12"], ["owner_id", 3], ["created_at", "2022-04-25 23:00:05.816003"], ["updated_at", "2022-04-25 23:00:05.816003"]]                  
  TRANSACTION (4.9ms)  COMMIT                                                           
 =>                                                                                     
#<CreditCard:0x000000012b866f60                                                         
 id: 2,                                                                                 
 number: "2222 2222 2222 3222",                                                         
 expiration: "12/12",                                                                   
 owner_id: 3,                                                                           
 created_at: Mon, 25 Apr 2022 23:00:05.816003000 UTC +00:00,                            
 updated_at: Mon, 25 Apr 2022 23:00:05.816003000 UTC +00:00>                            
3.0.0 :005 > 




3.0.0 :006 >  bob.credit_cards.create(number:'3322 2222 2222 3222', expiration:'12/24')
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.5ms)  INSERT INTO "credit_cards" ("number", "expiration", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "3322 2222 2222 3222"], ["expiration", "12/24"], ["owner_id", 1], ["created_at", "2022-04-25 23:01:48.294575"], ["updated_at", "2022-04-25 23:01:48.294575"]]
  TRANSACTION (4.5ms)  COMMIT                                      
 =>                                                                
#<CreditCard:0x000000011b0ed9b0                                    
 id: 3,                                                            
 number: "3322 2222 2222 3222",
 expiration: "12/24",
 owner_id: 1,
 created_at: Mon, 25 Apr 2022 23:01:48.294575000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 23:01:48.294575000 UTC +00:00> 
3.0.0 :007 > 




Add two more credit cards to one of the owners

#<CreditCard:0x000000014b6a01c0
 id: 4,
 number: "3322 2222 4444 3222",
 expiration: "02/24",
 owner_id: 1,
 created_at: Mon, 25 Apr 2022 23:03:06.028996000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 23:03:06.028996000 UTC +00:00> 
3.0.0 :008 > bob.credit_cards.create(number:'3322 1111 2222 3222', expiration:'10/24')
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.5ms)  INSERT INTO "credit_cards" ("number", "expiration", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "3322 1111 2222 3222"], ["expiration", "10/24"], ["owner_id", 1], ["created_at", "2022-04-25 23:03:51.666195"], ["updated_at", "2022-04-25 23:03:51.666195"]]
  TRANSACTION (4.5ms)  COMMIT
 => 
#<CreditCard:0x000000012bb28ca8
 id: 5,
 number: "3322 1111 2222 3222",
 expiration: "10/24",
 owner_id: 1,
 created_at: Mon, 25 Apr 2022 23:03:51.666195000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 23:03:51.666195000 UTC +00:00> 
3.0.0 :009 > 


Stretch Challenge
Add a credit limit to each card

3.0.0 :008 > creditlimitone.update(limit:5000)
  TRANSACTION (0.2ms)  BEGIN
  Owner Load (0.5ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]                                                         
  CreditCard Update (4.6ms)  UPDATE "credit_cards" SET "updated_at" = $1, "limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2022-04-25 23:19:53.769015"], ["limit", 5000], ["id", 1]]                                                                  
  TRANSACTION (0.9ms)  COMMIT                                                      
 => true                                                                           
3.0.0 :009 > creditlimitone
 => 
#<CreditCard:0x00000001067521d0                                                    
 id: 1,                                                               
 number: "2222 2222 2222 2222",                                       
 expiration: "12/22",                                                 
 owner_id: 2,                                                         
 created_at: Mon, 25 Apr 2022 22:38:20.134588000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 23:19:53.769015000 UTC +00:00,
 limit: 5000>   

 3.0.0 :014 > creditlimittwo.update(limit:10000)
  TRANSACTION (0.2ms)  BEGIN
  Owner Load (0.3ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]                                                              
  CreditCard Update (0.3ms)  UPDATE "credit_cards" SET "updated_at" = $1, "limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2022-04-25 23:22:42.681422"], ["limit", 10000], ["id", 2]]                                                                      
  TRANSACTION (1.0ms)  COMMIT                                                           
 => true                                                                                
3.0.0 :015 > creditlimittwo
 => 
#<CreditCard:0x0000000103ace208                                       
 id: 2,                                                               
 number: "2222 2222 2222 3222",                                       
 expiration: "12/12",                                                 
 owner_id: 3,                                                         
 created_at: Mon, 25 Apr 2022 23:00:05.816003000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 23:22:42.681422000 UTC +00:00,
 limit: 10000>            

  3.0.0 :017 > creditlimitthree.update(limit:20000)
  TRANSACTION (0.2ms)  BEGIN
  Owner Load (0.3ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]                                                         
  CreditCard Update (0.3ms)  UPDATE "credit_cards" SET "updated_at" = $1, "limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2022-04-25 23:23:47.022239"], ["limit", 20000], ["id", 3]]                                                                 
  TRANSACTION (3.8ms)  COMMIT                                                      
 => true                                                                           
3.0.0 :018 > creditlimitthree
 => 
#<CreditCard:0x00000001056badb8                                         
 id: 3,                                                                 
 number: "3322 2222 2222 3222",                                         
 expiration: "12/24",                                                   
 owner_id: 1,                                                           
 created_at: Mon, 25 Apr 2022 23:01:48.294575000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 23:23:47.022239000 UTC +00:00,
 limit: 20000>                
3.0.0 :019 > 
             


3.0.0 :020 > creditlimitfour.update(limit:100000)
  TRANSACTION (0.3ms)  BEGIN
  Owner Load (0.3ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]                                                        
  CreditCard Update (0.3ms)  UPDATE "credit_cards" SET "updated_at" = $1, "limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2022-04-25 23:24:41.129510"], ["limit", 100000], ["id", 4]]                                                               
  TRANSACTION (0.6ms)  COMMIT                                                     
 => true                                                                          
3.0.0 :021 > creditlimitfour
 => 
#<CreditCard:0x00000001275a91f0                                        
 id: 4,                                                                
 number: "3322 2222 4444 3222",                                        
 expiration: "02/24",                                                  
 owner_id: 1,                                                          
 created_at: Mon, 25 Apr 2022 23:03:06.028996000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 23:24:41.129510000 UTC +00:00,
 limit: 100000>                     


3.0.0 :023 > creditlimitfive.update(limit:1000000000)
  TRANSACTION (0.2ms)  BEGIN
  Owner Load (0.3ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]                                                        
  CreditCard Update (0.4ms)  UPDATE "credit_cards" SET "updated_at" = $1, "limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2022-04-25 23:25:46.733721"], ["limit", 1000000000], ["id", 5]]                                                           
  TRANSACTION (1.1ms)  COMMIT                                                     
 => true                                                                          
3.0.0 :024 > creditlimitfive
 => 
#<CreditCard:0x00000001039a7668                                        
 id: 5,                                                                
 number: "3322 1111 2222 3222",                                        
 expiration: "10/24",                                                  
 owner_id: 1,                                                          
 created_at: Mon, 25 Apr 2022 23:03:51.666195000 UTC +00:00,
 updated_at: Mon, 25 Apr 2022 23:25:46.733721000 UTC +00:00,
 limit: 1000000000>           