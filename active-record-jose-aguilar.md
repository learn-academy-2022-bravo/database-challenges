# Notes for Ruby on Rails rolodex

Challenge: Rolodex
As a developer, I have been tasked with creating a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

## Create a new Rails app named 'rolodex_challenge'.
done
## Create the database. The output in the terminal should look like this:
## Created database 'rolodex_development'
## Created database 'rolodex_test'
done
## Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.
rails generate model Dog name:string breed:string age:integer
rails generate model Person first_name:string last_name:string phone:string
## Run a migration to set up the database.
rails db:migrate
## Open up Rails console.
## Actions
## 
## Add five family members into the Person table in the Rails console.
Dog.create name: "Jax", breed: "German Shorthaired Pointer", age: 4
Person.create first_name: "", last_name: "", phone: ""
Person.create first_name: "Jose", last_name: "Aguilar", phone: "111-111-1111"
Person.create first_name: "Victor", last_name: "Argote", phone: "222-222-2222"
Person.create first_name: "Noel", last_name: "Aguilar", phone: "222-222-2223"
Person.create first_name: "Jack", last_name: "Aguilar", phone: "222-222-2224"
Person.create first_name: "Toni", last_name: "Sanchez", phone: "222-222-2225"
## Retrieve all the items in the database.
Person.all
## Add yourself to the Person table.
Person.create first_name: "Elyse", last_name: "Montano", phone: "222-222-2229"
Person.create first_name: "Elysa", last_name: "Montana", phone: "222-222-2292"

## Retrieve all the entries that have the same last_name as you.
`Schedule.where(event: 'Yoga')` returns an array of all the instances where this is true
Person.where(last_name: 'Aguilar')
## Update the phone number of the last entry in the database.
- `Shedule.last` returns the last instance
lastphonenumber = Person.last
- `yoga.update(event: 'Super Great Yoga')`
lastphonenumber.update(phone: '999-999-9999')
## Retrieve the first_name of the third Person in the database.
- `Schedule.find(3).first_name`
Person.find(3).first_name

## Stretch Challenges

Update all the family members with the same last_name as you, to have the same phone number as you.

phoneblast = Person.where(last_name: 'Aguilar')
phoneblast.update(phone: '654-654-7894')

Remove all family members that do not have your last_name.


nameblast = Person.where.not(last_name: 'Aguilar')
nameblast.destroy_all

