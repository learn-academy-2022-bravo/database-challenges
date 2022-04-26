# Validations Challenges
- Create a Rails application called company_contacts. The app will have a PostgreSQL database.
    rails new validations -d postgresql -T
    rails generate rspec:install

- Generate a model called Account that has a username, a password, and an email.
    rails g model Account username:string password:string email:string

All stories should have accompanying model specs.
Developer Stories

As a developer, I need username, password, and email to be required.

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    user_info = Account.create(username: 'Georgie', password: 'Hello123', email: 'georgie@gmail.com')
    expect(user_info).to be_valid 
  end 
end 


Output after running rspec 
% rspec ./spec/models/account_spec.rb.
Finished in 0.04747 seconds (files took 2.26 seconds to load)
1 example, 0 failures


As a developer, I need every username to be at least 5 characters long.

 it 'to not be valid below 5 characters' do 
    user_info = Account.create(username: 'Georgie', password: 'Hello123', email: 'georgie@gmail.com')
    expect(user_info.errors[:username]).to be_empty
  end

Output on terminal 
Finished in 0.03207 seconds (files took 0.81321 seconds to load)
2 examples, 0 failures

As a developer, I need each username to be unique.
it 'to be a unique username' do 
    user_info = Account.create(username: 'Georgie', password: 'Hello123', email: 'georgie@gmail.com')
    expect(user_info.errors[:username]).to be_empty
  end

Output on terminal 
Finished in 0.03001 seconds (files took 0.74607 seconds to load)
3 examples, 0 failures

As a developer, I need each password to be at least 6 characters long.
it 'password to not be valid below 6 characters' do 
    user_info = Account.create(username: 'Georgie', password: 'Hel', email: 'georgie@gmail.com')
    expect(user_info.errors[:password]).to be_empty
  end

Output on terminal 
Finished in 0.03453 seconds (files took 0.78929 seconds to load)
4 examples, 0 failures


As a developer, I need each password to be unique.
it 'to be a unique password' do 
    user_info = Account.create(username: 'Georgie', password: 'Hello123', email: 'georgie@gmail.com')
    expect(user_info.errors[:password]).to be_empty
  end

output on terminal 
Finished in 0.03059 seconds (files took 0.74259 seconds to load)
5 examples, 0 failure


As a developer, I want my Account model to have many associated Addresses.
Step 1
$ rails g migration addColumnsToAccount
$ rails db:migrate 

$ rails g model Address street_number:integer street_name:string city:string state:string zip:integer 

data from schema file after migration 
create_table "address", force: :cascade do |t|
    t.integer "street_number"
    t.string "street_name"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.



As a developer, I want to validate the presence of all fields on Address.