Validations Challenges
## Create a Rails application called company_contacts. The app will have a PostgreSQL database.

rails new company_contacts -d postgresql -T

## Generate a model called Account that has a username, a password, and an email.

rails g model Account username:string password:string email:string

All stories should have accompanying model specs.
Developer Stories



## As a developer, I need username, password, and email to be required.

Failures:

  1) Account it is valid with valid attributes
     Failure/Error: expect(earlnic.errors[:username]).to_not be_empty
       expected `[].empty?` to be falsey, got true
     # ./spec/models/account_spec.rb:6:in `block (2 levels) in <top (required)>'

Finished in 0.03052 seconds (files took 0.77372 seconds to load)
1 example, 0 failures

RSpec.describe Account, type: :model do
  
  it 'to be not valid without username' do
  earlnic = Account.create email: 'email@email.com', password: 'password'
  expect(earlnic.errors[:username]).to_not be_empty
  end
  it 'to be not valid without email' do
    earlnic = Account.create username: 'user', password: 'password'
    expect(earlnic.errors[:email]).to_not be_empty
  end
  it 'to be no valid without password' do
    earlnic = Account.create email: 'email@email.com', username: 'user'
    expect(earlnic.errors[:password]).to_not be_empty
  end
end


rspec ./spec/models/account_spec.rb:5 # Account to be not valid without username
rspec ./spec/models/account_spec.rb:9 # Account to be not valid without email
rspec ./spec/models/account_spec.rb:13 # Account to be no valid without password

## As a developer, I need every username to be at least 5 characters long.

Failed examples:

rspec ./spec/models/account_spec.rb:17 # Account to be not valid if username is less 5 characters

it 'to be not valid if username is less 5 characters' do
    earlnic = Account.create email: 'email@email.com', username: 'Tom', password: 'password'
    expect(earlnic.errors[:username]).to_not be_empty 
  end



## As a developer, I need each username to be unique.

Failed examples:

it 'does not allow duplicate username' do
    Account.create email: 'email@email.com', username: 'Tommy', password: 'password'
    earlnic = Account.create email: 'email@email.com', username: 'Tommy', password: 'password'
    expect(earlnic.errors[:username]).to_not be_empty 
  end

rspec ./spec/models/account_spec.rb:21 # Account does not allow duplicate username


## As a developer, I need each password to be at least 6 characters long.

it 'to be not valid if password is less 6 characters' do
    earlnic = Account.create email: 'email@email.com', username: 'Tom', password: 'pass'
    expect(earlnic.errors[:password]).to_not be_empty 
  end

Failed examples:

rspec ./spec/models/account_spec.rb:26 # Account to be not valid if password is less 6 characters


## As a developer, I need each password to be unique.

it 'does not allow duplicate password' do
    Account.create email: 'email@email.com', username: 'Tommy', password: 'password'
    earlnic = Account.create email: 'email@email.com', username: 'Tommy', password: 'password'
    expect(earlnic.errors[:password]).to_not be_empty 
  end

Failed examples:

rspec ./spec/models/account_spec.rb:30 # Account does not allow duplicate password

## As a developer, I want my Account model to have many associated Addresses.


## As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.
## As a developer, I want to validate the presence of all fields on Address.