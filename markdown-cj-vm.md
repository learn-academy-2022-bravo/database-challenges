As a developer, I need username, password, and email to be required.


➜  Company_Contacts git:(main) ✗ rspec spec/models/account_spec.rb
.

Finished in 0.04364 seconds (files took 0.933 seconds to load)
1 example, 0 failures

➜  Company_Contacts git:(main) ✗ rails c
Loading development environment (Rails 7.0.2.4)
3.0.0 :001 > accounts = Account.create(user_name:'Bob', password:'123abc', email
:'asg@ahg')
  TRANSACTION (0.1ms)  BEGIN
  Account Create (7.1ms)  INSERT INTO "accounts" ("user_name", "password", "email", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["user_name", "Bob"], ["password", "[FILTERED]"], ["email", "asg@ahg"], ["created_at", "2022-04-26 20:37:16.888581"], ["updated_at", "2022-04-26 20:37:16.888581"]]
  TRANSACTION (0.5ms)  COMMIT                                                   
 =>                                                                             
#<Account:0x000000011ba166b8                                                    
...                                                                             
3.0.0 :002 > accounts.valid?
 => true 
3.0.0 :003 > 
                      


As a developer, I need every username to be at least 5 characters long.

Finished in 0.03437 seconds (files took 0.88858 seconds to load)
2 examples, 0 failures


As a developer, I need each username to be unique.

  1) Account does not allow duplicate user names
     Failure/Error: expect(scully.errors[:user_name]).to_not be_empty
       expected `[].empty?` to be falsey, got true
     # ./spec/models/account_spec.rb:17:in `block (2 levels) in <top (required)>'

Finished in 0.03971 seconds (files took 0.88066 seconds to load)
3 examples, 1 failure

Failed examples:

rspec ./spec/models/account_spec.rb:14 # Account does not allow duplicate user names

➜  Company_Contacts git:(main) ✗ rspec spec/models/account_spec.rb
...

Finished in 0.03618 seconds (files took 0.88436 seconds to load)
3 examples, 0 failures

➜  Company_Contacts git:(main) ✗ 



As a developer, I need each password to be at least 6 characters long.


As a developer, I need each password to be unique.

➜  Company_Contacts git:(main) ✗ rspec spec/models/account_spec.rb
......

Finished in 0.0392 seconds (files took 0.82934 seconds to load)
6 examples, 0 failures

  it 'is valid with valid attributes' do
    accounts = Account.create(user_name:'User 1', password:'1qazxsw23', email:'user1@gmail.com')
    expect(accounts).to be_valid
    end

    it 'to not be valid less than five characters' do
      accounts = Account.create(user_name: 'T', password:'1qazxsw23', email:'user1@gmail.com')
      expect(accounts.errors[:user_name]).to_not be_empty
      end   

      it 'does not allow duplicate user names' do
        Account.create(user_name: 'DScully', password: 'iL0v3Moulder', email: 'dscully@fbi.gov')
        scully = Account.create(user_name: 'DScully', password: 'iL0v3Moulder', email: 'dscully@fbi.gov')
        expect(scully.errors[:user_name]).to_not be_empty
      end   
    it 'is valid with valid attributes' do
      accounts = Account.create(user_name:'User 1', password:'1qazxsw23', email:'user1@gmail.com')
      expect(accounts).to be_valid
      end

    it 'to not be valid less than five characters' do
      accounts = Account.create(user_name: 'Johnnyb', password:'s', email:'user1@gmail.com')
      expect(accounts.errors[:password]).to_not be_empty
      end   

    it 'does not allow duplicate user names' do
      Account.create(user_name: 'DScully', password: 'iL0v3Moulder', email: 'dscully@fbi.gov')
      scully = Account.create(user_name: 'DScully', password: 'iL0v3Moulder', email: 'dscully@fbi.gov')
      expect(scully.errors[:password]).to_not be_empty
      end   

As a developer, I want my Account model to have many associated Addresses.

As a developer, I want Address to have street_number, street_name, city, state, and zip
 attributes. The street_number and zip should be integers.

 street_name:'string' city:'string' state:'string' zip:integer
[WARNING] The model name 'Addresses' was recognized as a plural, using the singular 'Address' instead. Override with --force-plural or setup custom inflection rules for this noun before running the generator.
      invoke  active_record
      create    db/migrate/20220426221450_create_addresses.rb
      create    app/models/address.rb
      invoke    rspec
      create      spec/models/address_spec.rb
➜  Company_Contacts git:(main) ✗ 

As a developer, I want to validate the presence of all fields on Address.



