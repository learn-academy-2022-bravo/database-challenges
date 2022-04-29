//Setup//
Create a new rails application and database

Create a model for owner
rails g model Owner
rails db:migrate
def change
    create_table :owners do |t|


An owner has a name and address, and can have multiple credit cards

rails g migration add_culumns_to_owner
rails db:migrate
  def change
    add_column :owners, :name, :string
    add_column :owners, :address, :string

Create a model for credit card

rails g model CreditCard


A credit card has a number, an expiration date, and an owner
def change

    rails g migration add_columns_to_credit cards
    rails db:migrate
    add_column :credit_cards, :number, :string
    add_column :credit_cards, :exp_date, :string
    add_column :credit_cards, :owner_id, :integer
  end





//Challenges//
Create three owners and save them in the database

Owner.create name:” Dr Bruce Banner”, address:”The Tower”
Owner.create name:” Sherlock Holmes”, address:”England”
Owner.create name:” BruceWayne”, address:”Batcave”


Create a credit card in the database for each owner

Variable  = Owner.find(1)

Variable.credit_cards.create number: “1111-2222-3333-4444”,
expiration _date: “03/22”


Add two more credit cards to one of the owners
