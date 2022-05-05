Validations Challenges

Create a Rails application called company_contacts. The app will have a PostgreSQL database.




Generate a model called Account that has a username, a password, and an email.
DONE

All stories should have accompanying model specs.
DONE
Developer Stories

As a developer, I need username, password, and email to be required.
validates :username, :password, :email, presence: true
DONE

As a developer, I need every username to be at least 5 characters long.
<!-- it 'username is atleast 5 characters' do 
    account_two = Account.create(username: 'Maso', password: 'Apples123', email: 'Maso@y.com')
    expect(account_two.errors[:username]).to_not be_empty
  end -->

As a developer, I need each username to be unique.
DONE
<!-- it 'each username will be unique' do 
    account_two = Account.create(username: 'Maso', password: 'Apples123', email: 'Maso@y.com')
    expect(account_two.errors[:username]).to_not be_empty
  end -->

As a developer, I need each password to be at least 6 characters long.
DONE
<!-- it 'password is to be atleast 6 characters' do 
    account_two = Account.create(username: 'Maso', password: 'A23', email: 'Maso@y.com')
    expect(account_two.errors[:password]).to_not be_empty
  end -->

As a developer, I need each password to be unique.
DONE
<!-- it 'each password will be unique' do 
    account_one = Account.create(username: 'Adamdddee', password: 'Password', email: 'Adam@y.com')
    account_two = Account.create(username: 'Maso', password: 'Password', email: 'Maso@y.com')
    expect(account_two.errors[:password]).to_not be_empty -->
As a developer, I want my Account model to have many associated Addresses.



As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.
As a developer, I want to validate the presence of all fields on Address.