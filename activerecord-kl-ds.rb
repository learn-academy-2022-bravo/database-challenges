
# Set Up

# Create a new Rails app named 'rolodex_challenge'.
# Create the database. The output in the terminal should look like this:
# Created database 'rolodex_development'
# Created database 'rolodex_test'
# Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.

# Run a migration to set up the database.
# Open up Rails console.

# Actions

# Add five family members into the Person table in the Rails console.

Person.create(first_name:'Ricky', last_name:'Bobby', phone: '555-5555')



# Retrieve all the items in the database.
Person.all

# Add yourself to the Person table.
Person.create(first_name:'Kathy', last_name:'Ly', phone: '555-5555')

# Retrieve all the entries that have the same last_name as you.

Person.all
# Update the phone number of the last entry in the database.
kathy = Person.where(phone: '555-5555')
kathy.update(phone:'777-7777')

# Retrieve the first_name of the third Person in the database.
first_name = Person.find(3)
3.0.0 :022 > first_name.first_name
 => "Kathy" 
3.0.0 :023 > 

# Stretch Challenges

# Update all the family members with the same last_name as you, to have the same phone number as you.

#
# Remove all family members that do not have your last_name.
# This is the line that I added for Kathy
# This is the line I am adding for Dustin