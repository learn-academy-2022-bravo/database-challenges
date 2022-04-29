# Validations Challenges
##  - Create a Rails application called company_contacts. The app will have a PostgreSQL database.
rails new company_contacts2 -d postgresql -T
cd company_contacts2
rails db:create
bundle add rspec-rails
rails generate rspec:install
##  - Generate a model called Account that has a username, a password, and an email.
rails generate model Account username:string password:string email:string
rails db:migrate
rspec spec/models/
##  - All stories should have accompanying model specs.
### Validity check
                This is a stamp to reuse on other validations
it 'is valid with valid attributes' do
    var1 = Account.create(username: 'Tony', password: '21563', email: 'user1@mail.com')
    expect(var1).to be_valid
end

.valid? returns true or false

                RED
it 'to not be valid without username' do
    var1 = Account.create(password: '21563', email: 'user1@mail.com')
    expect(var1.errors[:username]).to_not be_empty
end
       expected `[].empty?` to be falsey, got true

                GREEN
app/models/account.rb
    validates :username, presence:true
                                OR
                Could have more than one like below 
    validates :username, :password, :email, presence:true

https://guides.rubyonrails.org/v4.2/active_record_validations.html  
##  **Developer Stories**
##  - As a developer, I need username, password, and email to be required.
company_contacts2/spec/models/account_spec.rb
  it 'to not be valid without username' do
    var1 = Account.create(password: '21563', email: 'user1@mail.com')
    expect(var1.errors[:username]).to_not be_empty
  end
  it 'to not be valid without password' do
    var1 = Account.create(username: '21563', email: 'user1@mail.com')
    expect(var1.errors[:password]).to_not be_empty
  end
  it 'to not be valid without email' do
    var1 = Account.create(username: '21563', password: 'user1@mail.com')
    expect(var1.errors[:email]).to_not be_empty
  end
company_contacts2/app/models/account.rb
    validates :username, :password, :email, presence:true
##  - As a developer, I need every username to be at least 5 characters long.
company_contacts2/spec/models/account_spec.rb
it 'username to not be valid under 5 characters' do
    var1 = Account.create(username: 'Tony', password: '21563', email: 'user1@mail.com')
    expect(var1.errors[:username]).to_not be_empty
end
app/models/account.rb
    validates :username, length: { minimum: 5 }
##  - As a developer, I need each username to be unique.
company_contacts2/spec/models/account_spec.rb
it 'username to not be valid if not unique' do
    var1 = Account.create(username: 'Tommy', password: '21563', email: 'user1@mail.com')
    var2 = Account.create(username: 'Tommy', password: '21563', email: 'user1@mail.com')
    expect(var2.errors[:username]).to_not be_empty
end
app/models/account.rb
    validates :username, uniqueness: true
##  - As a developer, I need each password to be at least 6 characters long.
company_contacts2/spec/models/account_spec.rb
  it 'password to not be valid if not 6 characters' do
    var1 = Account.create(username: 'Tomm3y', password: '21563', email: 'user1@mail.com')
    expect(var1.errors[:password]).to_not be_empty
  end
app/models/account.rb
    validates :password, length: { minimum: 6 }
##  - As a developer, I need each password to be unique.
company_contacts2/spec/models/account_spec.rb
it 'password to not be valid if not unique' do
    var1 = Account.create(username: 'Tommy', password: '23121563', email: 'user1@mail.com')
    var2 = Account.create(username: 'Tommey', password: '23121563', email: 'user1@mail.com')
    expect(var2.errors[:password]).to_not be_empty
end
app/models/account.rb
    validates :username, :password, uniqueness: true
##  - As a developer, I want my Account model to have many associated Addresses.
This follows the Developer story below

class Account < ApplicationRecord
    has_many :addresses
    validates :username, :password, :email, presence:true
    validates :username, length: { minimum: 5 }
    validates :username, :password, uniqueness: true
    validates :password, length: { minimum: 6 }
end

class Address < ApplicationRecord
    belongs_to :account
end
##  - As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.
This precedes the Developer story above

rails generate model Address street_number:integer street_name:string state:string zip:integer account_id:integer
rails db:migrate

                testing to see associated working in rails c
Account.create(username: 'Tommy', password: '23121563', email: 'user1@mail.com')
Account.create(username: 'Tod 2.0', password: 'd23121563', email: 'user1@mail.com')
Account.create(username: 'T man the', password: '2s3121563', email: 'user1@mail.com')

var3 = Account.find(1)

var3.addresses.create(street_number: 619, street_name:'string', state:'CA', zip:'91911')
var3.addresses.create(street_number: 169, street_name:'stringCheese', state:'AC', zip:'91191')
##  - As a developer, I want to validate the presence of all fields on Address.
        Location
company_contacts2/spec/models/address_spec.rb
            run in terminal due to changing models
rspec spec/models/address_spec.rb

  it 'to not be valid without street_number' do
    var3 = Account.create(username: 'Tommy', password: '23121563', email: 'user1@mail.com')
    var9 = var3.addresses.create( street_name:'string', state:'CA', zip:'91911')
    expect(var9.errors[:street_number]).to_not be_empty
  end

    validates :street_number, presence:true

  it 'to not be valid without street_name' do
    var3 = Account.create(username: 'Tommy', password: '23121563', email: 'user1@mail.com')
    var9 = var3.addresses.create(street_number: 619, state:'CA', zip:'91911')
    expect(var9.errors[:street_name]).to_not be_empty
  end
    validates :street_number, :street_name, presence:true

  it 'to not be valid without state' do
    var3 = Account.create(username: 'Tommy', password: '23121563', email: 'user1@mail.com')
    var9 = var3.addresses.create(street_number: 619, street_name:'string', zip:'91911')
    expect(var9.errors[:state]).to_not be_empty
  end
    validates :street_number, :street_name, :state, presence:true

  it 'to not be valid without zip' do
    var3 = Account.create(username: 'Tommy', password: '23121563', email: 'user1@mail.com')
    var9 = var3.addresses.create(street_number: 619, street_name:'string', state:'CA')
    expect(var9.errors[:zip]).to_not be_empty
  end
    validates :street_number, :street_name, :state, :zip, presence:true
## **Stretch Challenges**  
##  - As a developer, I need each Account password to have at least one number.
  - HINT: Read about [ custom validations ](https://guides.rubyonrails.org/active_record_validations.html#performing-custom-validations) in the Active Record validation docs.
##  - As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account.
  - HINT: Read about [ :scope ](https://guides.rubyonrails.org/active_record_validations.html#uniqueness) in the Active Record validation docs.
##  - As a developer, I want to validate that the Address street_number and zip are numbers.
  - HINT: Read about [ numericality ](https://edgeguides.rubyonrails.org/active_record_validations.html#numericality) in the Active Record validation docs.
##  - As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers.
  - HINT: Read about [ message ](https://edgeguides.rubyonrails.org/active_record_validations.html#message) in the  validation docs.
# Other Challenges
# also other Challenges