Create a new rails application and database
$ rails new associations -d postgresql -T
  $ cd associations
  $ rails db:create


Create a model for owner
  $ rails g model Owner
  $ rails db:migrate

An owner has a name and address, and can have multiple credit cards
rails generate migration add_columns_to_owner
    add_column :owners, :name, :string
    add_column :owners, :address, :string



Create a model for credit card
rails g model CreditCard 

A credit card has a number, an expiration date, and an owner
rails generate migration add_columns_to_credit_cards
    add_column :credit_cards, :number, :string 
    add_column :credit_cards, :expiration_date, :string
    add_column :credit_cards, :owner_id, :integer

Challenges


Create three owners and save them in the database
Owner.create name: "Jonathan", address: "209 Kinda Ok"
Owner.create name: "Victor", address: "619 Is Da Best"
Owner.create name: "Jack", address: "123 Never Let Go Way."


Create a credit card in the database for each owner
jonathan = Owner.find(1)
    jonathan.credit_cards.create number: "0000-1111-2222-3333", expiration_date: "04/22"
victor = Owner.find(2)
    victor.credit_cards.create number: "0000-1111-2222-4444", expiration_date: "05/22"
jack = Owner.find(3)
    jack.credit_cards.create number: "0000-1111-2222-5555", expiration_date: "03/22"


Add two more credit cards to one of the owners
    jack.credit_cards.create number: "4060-1111-2222-5555", expiration_date: "03/25"
    jack.credit_cards.create number: "1000-2111-3222-7555", expiration_date: "09/23"


Stretch Challenge


Add a credit limit to each card
rails generate migration add_columns_to_credit_limit
    add_column :credit_cards, :limit, :integer 
rails db:migrate
CreditCard.update limit: 1000
CreditCard.find(3).update limit: 50000
CreditCard.find(4).update limit: 900

Find the total credit extended to the owner with multiple credit cards
total = CreditCard.where "owner_id = 3"
total.sum :limit
Output:  51900 