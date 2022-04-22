# Rolodex_Challenge Notes

# -----------------------------------------------------------

## Set Up

* Create a new Rails app named 'rolodex_challenge'.

    <block>
        $ rails new rolodex_challenge -d postgresql -T
        $ cd rolodex_challenge
    </block>

* Create the database. The output in the terminal should look like this:

    <block>
        $ rails db:create

        Created database 'rolodex_development'
        Created database 'rolodex_test'
    </block>

* Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.

    <block>
        $ rails generate model Person first_name:string last_name:string phone:string
    </block>

* Run a migration to set up the database.

    <block>
        $ rails db:migrate
    </block>

* Open up Rails console.

    <block>
        $ rails c
    </block>


# -----------------------------------------------------------


## Actions

* Add five family members into the Person table in the Rails console.

    <block>
        $ Person.create first_name:"Prince", last_name:"Rogers
        ", phone:"800-777-9311"

        $ Person.create first_name:"Patrick", last_name:"Starr
        ", phone:"700-800-9000"

        $ Person.create first_name:"King", last_name:"Rogers",
        phone:"800-777-1234"

        $ Person.create first_name:"Queen", last_name:"Rogers"
        , phone:"800-777-1234"

        $ Person.create first_name:"Brother", last_name:"Roger
        s", phone:"800-777-1256"
    </block>

* Retrieve all the items in the database.

    <block>
        $ Person.all
    </block>

* Add yourself to the Person table.

    <block>
        $ Person.create first_name:"Mister", last_name:"Rogers
        ", phone:"800-777-5555"
    </block>

* Retrieve all the entries that have the same last_name as you.

    <block>
        $ lastnames = Person.where last_name: "Rogers"
        lastnames
    </block>

* Update the phone number of the last entry in the database.

    <block>
        $ newphone = Person.find 6 
        $ newphone.phone = "619-777-5678"
        $ newphone.save
    </block>

* Retrieve the first_name of the third Person in the database.

    <block>
        $ firstandthird = Person.find 3
        $ firstandthird.first_name
    </block>


# -----------------------------------------------------------

## Stretch Challenges

* Update all the family members with the same last_name as you, to have the same phone number as you.
    
    <block>
        $ allfamily = Person.where lastname:"Rogers"
        $ allfamily.update(phone:"619-777-5678")
    </block>

* Remove all family members that do not have your last_name.



 