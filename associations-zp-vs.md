Banking Challenge

Create a new rails application and database
-my_association

Create a model for owner-

-create    db/migrate/20220425225307_add_columns_to_owner.rb
-create    app/models/owner.rb

An owner has a name and address, and can have multiple credit cards
create    db/migrate/20220425230326_create_credit_cards.rb

Create a model for credit card

A credit card has a number, an expiration date, and an owner
Challenges

add_column :credit_cards, :number, :string
add_column :credit_cards, :exp_date, :string
add_column :credit_cards, :owner_id, :integer

Create three owners and save them in the database

Owner.create name:"Professor Saldana", address:"in-n-out burger"
Owner.create name:"Toni Stark", address:"Oceanside"
Owner.create name:"MC BIGBODYSAM", address:"DA BRONX jk, YONKERS"

Create a credit card in the database for each owner

Add two more credit cards to one of the owners



-----Stretch Challenge------

Add a credit limit to each card

Find the total credit extended to the owner with multiple credit cards