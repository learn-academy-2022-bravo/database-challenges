#Active Record - Samir and Darwin, Van

Q1. Add five family members into the Person table in the Rails console.

#1:Person.create(first_name:'Beau', last_namee: 'Gone', phone_number: '1800-643-1052')
#2:Person.create(first_name:'BigBodySam', last_namee: 'LilBodyRivera', phone_number: '914-439-9
714')
#3:Person.create(first_name:'Kevin',  last_name: 'Gates', phone_number: '123-456-789')
#4:Person.create(first_name:'Dave',  last_name: 'East', phone_number: '987-654-321')
#5:Person.create(first_name:'Kodak',  last_name: 'Black', phone_number: '321-234-566')


Q2. Retrieve all the items in the database
Person.all

  Person Load (6.7ms)  SELECT "people".* FROM "people"
 =>                                                     
[#<Person:0x00000001351296a8                               
  id: 1,                                                       
  first_name: "Beau",                                                  
  last_name: "Gone",                                                  
  phone_number: "1800-643-1052",                                      
  created_at: Fri, 22 Apr 2022 17:47:15.637171000 UTC +00:00,                           
  updated_at: Fri, 22 Apr 2022 17:47:15.637171000 UTC +00:00>,                          
 #<Person:0x0000000135027958                                
  id: 2,                                                       
  first_name: "BigBodySam",                                         
  last_name: "LilBodyRivera",                                          
  phone_number: "914-439-9714",                                
  created_at: Fri, 22 Apr 2022 17:48:51.514902000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 17:48:51.514902000 UTC +00:00>,
 #<Person:0x0000000135027638
  id: 3,
  first_name: "Kevin",
  last_name: "Gates",
  phone_number: "123-456-789",
  created_at: Fri, 22 Apr 2022 17:49:54.994599000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 17:49:54.994599000 UTC +00:00>,
 #<Person:0x0000000135027520
  id: 4,
  first_name: "Dave",
  last_name: "East",
  phone_number: "987-654-321",
  created_at: Fri, 22 Apr 2022 17:50:27.388728000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 17:50:27.388728000 UTC +00:00>,
 #<Person:0x0000000135027340
  id: 5,
  first_name: "Kodak",
  last_name: "Black",
  phone_number: "987-222-4444",
  created_at: Fri, 22 Apr 2022 17:51:03.542170000 UTC +00:00,
  updated_at: Fri, 22 Apr 2022 17:59:05.825676000 UTC +00:00>] 


Q3. Add yourself to the Person table.

:Person.create(first_name:'BigBodySam', last_namee: 'LilBodyRivera', phone_number: '914-439-9
714'

Q4. Retrieve all the entries that have the same last_name as you.
 Person.where(last_name: 'LilBodyRivera')

Q5. Update the phone number of the last entry in the database.
kodak_phone.update(phone_number: '987-222-4444')

Q6. Retrieve the first_name of the third Person in the database.
Person.find(3).first_name

Stretch Challenges


Update all the family members with the same last_name as you, to have the same phone number as you.
Remove all family members that do not have your last_name.
