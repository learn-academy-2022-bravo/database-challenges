Validations Challenges
Create a Rails application called company_contacts. The app will have a PostgreSQL database.
Generate a model called Account that has a username, a password, and an email.
rails g model Account username:string password:string email:string 

All stories should have accompanying model specs.
Developer Stories

As a developer, I need username, password, and email to be required.
As a developer, I need every username to be at least 5 characters long.
require 'rails_helper'
____________________________________________________________________________________________________
RSpec.describe Account, type: :model do
it 'is valid with valid entries' do 
  user_1 = Account.create(username: 'Amanda', password: 'password1!', email: 'amanda@example.com')
  expect(user_1).to be_valid
  end
it 'to not be valid if less than 5 characters' do 
  user_1 = Account.create(username: 'ama')
  expect(user_1.errors[:username]).to_not be_empty
  end   
end 
____________________________________________________________________________________________________
As a developer, I need each username to be unique.
it 'requires each username to be unique' do
    user_1_valid = Account.create(username: 'Lassiter', password: 'password1!', email: 'amanda@example.com'), user_1_invalid = Account.create(username: 'Lassiter', password: 'password1!', email: 'amanda@example.com')
    expect(user_1_invalid.errors[:username]).to_not be_empty
  end
____________________________________________________________________________________________________
As a developer, I need each password to be at least 6 characters long.
it 'to not be valid if less than 6 characters' do 
    user_1 = Account.create(password: 'pass')
    expect(user_1.errors[:password]).to_not be_empty
    end  
____________________________________________________________________________________________________
As a developer, I need each password to be unique.
it 'requires each password to be unique' do
      user_1_valid = Account.create(username: 'Lassiter', password: 'password1!', email: 'amanda@example.com'), user_1_invalid = Account.create(username: 'Lassiter', password: 'password1!', email: 'amanda@example.com')
      expect(user_1_invalid.errors[:password]).to_not be_empty
    end
___________________________________________________________________________________________________
As a developer, I want my Account model to have many associated Addresses.


As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.
As a developer, I want to validate the presence of all fields on Address.
Located in address_spec.rb: 
Note- this test ran successfully, while validation did not. 
RSpec.describe Address, type: :model do
    it 'is not valid without a street number' do
      user_1 = Address.create(street_name: 'Lucifer Lane', city: 'Gates of Hell', state: 'Despair', zip: 777)
      expect(user_1.errors[:street_number]).to_not be_empty
  end
end


Stretch Challenges

As a developer, I need each Account password to have at least one number.
HINT: Read about custom validations in the Active Record validation docs.
As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account.
HINT: Read about :scope in the Active Record validation docs.
As a developer, I want to validate that the Address street_number and zip are numbers.
HINT: Read about numericality in the Active Record validation docs.
As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers.
HINT: Read about message in the validation docs.
________________________________________________________________________________________________________________

Schema: 
ActiveRecord::Schema[7.0].define(version: 2022_04_26_212839) do
  <!-- # These are extensions that must be enabled in order to support this database -->
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "street_number"
    t.string "street_name"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
____________________________________________________________________________________________________
Vaidations in application_record.rb: 
class ApplicationRecord < ActiveRecord::Base
  validates :username, :password, :email, presence: true
  validates :username, length: { minimum: 5}
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6}
  validates :password, uniqueness: true
  validates :street_number, presence: true
  primary_abstract_class
end
____________________________________________________________________________________________________
In account.rb: 
class Account < ApplicationRecord
    has_many :addresses
end
____________________________________________________________________________________________________
In address.rb:
class Address < ApplicationRecord
    belongs_to :account
end

