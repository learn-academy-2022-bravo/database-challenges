Setup
Create a new rails application and database

rails new banking -d postgresql -T

Create a model for owner

rails g model Owner

An owner has a name and address, and can have multiple credit cards

class AddColumnsToOwner < ActiveRecord::Migration[7.0]
  def change
    add_column :owners, :name, :string
    add_column :owners, :address, :string
  end
end


Create a model for credit card

class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|

      t.timestamps
    end
  end
end


A credit card has a number, an expiration date, and an owner

class AddColumnsToCreditCard < ActiveRecord::Migration[7.0]
  def change
    add_column :credit_cards, :number, :string
    add_column :credit_cards, :expdate, :string
    add_column :credit_cards, :owners_id, :integer
    
  end
end


Challenges
Create three owners and save them in the database

Owner.create name:"bruce", address:"1058 ct"
Owner.create name:"wayne", address:"6482 pl"
Owner.create name:"hank", address:"9283 blvd"


Create a credit card in the database for each owner

earl.credit_cards.create number:"1234567", expdate:"20nov27"

wayne.credit_cards.create number:"3456789", expdate:"12dec25"

bruce.credit_cards.create number:"9876543", expdate:"2feb29"

Add two more credit cards to one of the owners

earl.credit_cards.create number:"7654321", expdate:"1jan28"

earl.credit_cards.create number:"9128734", expdate:"29may30"


Stretch Challenge
Add a credit limit to each card
Find the total credit extended to the owner with multiple credit cards