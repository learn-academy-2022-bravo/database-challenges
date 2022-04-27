
New Application: 
$ rails new validations-sk-nd -d postgresql -T
$ cd validations-sk-nd 

Creating database: 
$ validations-sk-nd % rails db:create

Installing rspec gem: 
$ validations-sk-nd % bundle add rspec-rails
$ validations-sk-nd % rails generate rspec:install

Creating Model in Application 
$ validations-sk-nd % rails g model Account username:string password:string email:string
$ validations-sk-nd % rails db:migrate

Rspec file for Account 
$ rspec spec/models/account_spec.rb
```RUBY 
require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    account = Account.create(username: 'Rossosaurus', password: 'RachelForever66', email:'radross@gmail.com')
    expect(account).to be_valid
  end 

  it 'to not be valid without username' do
    account = Account.create(password: 'RachelForever66', email:'radross@gmail.com')
    expect(account.errors[:username]).to_not be_empty
  end

  it 'to not be valid without password' do
    account = Account.create(username: 'Rossosaurus', email:'radross@gmail.com')
    expect(account.errors[:password]).to_not be_empty
  end

  it 'to not be valid without email' do
    account = Account.create(username: 'Rossosaurus', password: 'RachelForever66')
    expect(account.errors[:email]).to_not be_empty
  end

  it 'to not be valid under 5 characters' do
    account = Account.create(username: 'Ross', password: 'RachelForever66', email:'radross@gmail.com')
    expect(account.errors[:username]).to_not be_empty
  end

  it 'does not allow duplicate usernames' do
    Account.create(username: 'Rossosaurus', password: 'RachelForever66', email:'radross@gmail.com')
    account = Account.create(username: 'Rossosaurus', password: 'RachelForever66', email:'radross@gmail.com')
    expect(account.errors[:username]).to_not be_empty
  end 

  it 'to not be valid under 6 characters' do
    account = Account.create(username: 'Ross', password: 'Rache', email:'radross@gmail.com')
    expect(account.errors[:password]).to_not be_empty
  end

  it 'does not allow duplicate passwords' do
    Account.create(username: 'Rossosaurus', password: 'RachelForever66', email:'radross@gmail.com')
    account = Account.create(username: 'Rossosaurus', password: 'RachelForever66', email:'radross@gmail.com')
    expect(account.errors[:password]).to_not be_empty
  end 
end
```

Validations for Account
```RUBY
class Account < ApplicationRecord
    validates :username, :password, :email, presence: true
    validates :username, length: { minimum: 5 }
    validates :username, uniqueness: true
    validates :password, length: { minimum: 6 }
    validates :password, uniqueness: true
    has_many :addresses
end
```

Creating Address model connected to Account 
$ rails g model Addresses street_number:integer street_name:string city:string state:string zip:integer account_id:integer


Rpsec for Address 
$ rspec spec/models/address_spec.rb
```RUBY  
require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is valid with valid attributes' do
    account = Account.create(username: 'Rossosaurus', password: 'RachelForever66', email:'radross@gmail.com')
    ross = account.addresses.create(street_number: 17 , street_name: 'Grove', city:'New York', state:'New York', zip: 10014, account_id: 1)
    expect(ross).to be_valid
  end 
end
```
Validations for Address 
```RUBY 
class Address < ApplicationRecord
    belongs_to :account
    validates :street_number, :street_name, :city, :state, :zip, :account_id
end
```

