Create a new rails application and database
Create a model for owner
➜  bank_app git:(main) ✗ rails g model Owner name:string address:string card_num:string 
      invoke  active_record
      create    db/migrate/20220425211313_create_owners.rb
      create    app/models/owner.rb


An owner has a name and address, and can have multiple credit cards
Create a model for credit card
➜  bank_app git:(main) ✗ rails g model CreditCard number:string expdate:string owner_id:integer
      invoke  active_record
      create    db/migrate/20220425211654_create_credit_cards.rb
      create    app/models/credit_card.rb

A credit card has a number, an expiration date, and an owner



Challenges
Create three owners and save them in the database
[#<Owner:0x00000001394ee820
  id: 1,
  name: "Dustin",
  address: "1234 South 56th St",
  created_at: Mon, 25 Apr 2022 21:35:10.354192000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 21:35:10.354192000 UTC +00:00>,
 #<Owner:0x00000001394ee690
  id: 2,
  name: "Ricky Bobby",
  address: "420 Highway",
  created_at: Mon, 25 Apr 2022 21:35:47.485617000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 21:35:47.485617000 UTC +00:00>,
 #<Owner:0x00000001394ee5a0
  id: 3,
  name: "Thor",
  address: "777 Asgard Way",
  created_at: Mon, 25 Apr 2022 21:37:00.004518000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 21:37:00.004518000 UTC +00:00>] 
3.0.0 :005 > 

Create a credit card in the database for each owner
[#<CreditCard:0x000000012fdd2e28                                  
  id: 1,                                                          
  number: "1234 5678 1234 4567",                                  
  expdate: "10/23",                                               
  owner_id: 1,                                                    
  created_at: Mon, 25 Apr 2022 21:42:03.022429000 UTC +00:00,     
  updated_at: Mon, 25 Apr 2022 21:42:03.022429000 UTC +00:00>,    
 #<CreditCard:0x000000012fdd2d60                                  
  id: 2,                                                          
  number: "9876 6543 1234 3456",                                  
  expdate: "12/25",                                               
  owner_id: 2,                                                    
  created_at: Mon, 25 Apr 2022 21:44:56.664047000 UTC +00:00,     
  updated_at: Mon, 25 Apr 2022 21:44:56.664047000 UTC +00:00>,
 #<CreditCard:0x000000012fdd2c98
  id: 3,
  number: "7777 6543 1234 9999",
  expdate: "07/14",
  owner_id: 3,
  created_at: Mon, 25 Apr 2022 21:46:10.608878000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 21:46:10.608878000 UTC +00:00>] 
3.0.0 :013 > 

Add two more credit cards to one of the owners
#<CreditCard:0x000000012c814598
  id: 3,
  number: "7777 6543 1234 9999",
  expdate: "07/14",
  owner_id: 3,
  created_at: Mon, 25 Apr 2022 21:46:10.608878000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 21:46:10.608878000 UTC +00:00>,
 #<CreditCard:0x000000012c8144d0
  id: 4,
  number: "8888 6543 1234 8888",
  expdate: "09/12",
  owner_id: 3,
  created_at: Mon, 25 Apr 2022 21:48:40.519564000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 21:48:40.519564000 UTC +00:00>,
 #<CreditCard:0x000000012c814408
  id: 5,
  number: "1111 6543 1234 1111",
  expdate: "02/20",
  owner_id: 3,
  created_at: Mon, 25 Apr 2022 21:49:25.199900000 UTC +00:00,
  updated_at: Mon, 25 Apr 2022 21:49:25.199900000 UTC +00:00>] 

Stretch Challenge
Add a credit limit to each card
  invoke  active_record
      create    db/migrate/20220425215757_add_column_liit_to_credit_cards.rb
Find the total credit extended to the owner with multiple credit cards

