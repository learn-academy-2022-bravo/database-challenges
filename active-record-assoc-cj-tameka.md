# Banking Challenge

## Setup

- Create a new rails application and database
    
    $ rails new banking_challenge -d postgresql -T
    $ cd banking_challenge
    $ rails db:create

- Create a model for owner
- An owner has a name and address, and can have multiple credit cards
    
    $ rails g model Owner name:string address:string card_one:string card_two:string


- Create a model for credit card
- A credit card has a number, an expiration date, and an owner

    $ rails g model CreditCard number:string expiration:string owner_id:integer



## Challenges

- Create three owners and save them in the database

    $ Owner.create(name:'Uncle Pennybags', address:'1000 Boardwalk Ave', card_one:'1000 2000 3000 4000', card_two:'4000 3000 2000 1000')

    $ Owner.create(name:'Bill Gates', address:'130 Priedel Ave', card_one:'2500 9000 4875 3958')

    $ Owner.create(name:'Amber Heard', address:'2587 Crazy Lady Ln', card_one:'2350 9000 4325 6758')

 --> Ended up changing all of the 'card_one' and 'card_two' values to card names after realizing the actual card numbers belonged in the CreditCard table.

- Create a credit card in the database for each owner

    $ techguy.credit_cards.create(number:'1000 3000 5000 8274', expiration:'May 2045')

    $ monopoly.credit_cards.create(number:'5000 5000 5000 5678', expiration:'Dec 2099')

    $ amber.credit_cards.create(number:'0001 0002 0003 0004', expiration:'Feb 2021')

- Add two more credit cards to one of the owners

    $ monopoly.card_three = 'AMEX Black'
    $ monopoly.credit_cards.create(number:'9000 4500 3200 9876', expiration:'Oct 3000')



## Stretch Challenge

- Add a credit limit to each card

    $rails g migration add_credit_limit_column_to_credit_card

    $ techguy_limit = CreditCard.where(owner_id:'2').first
    $ techguy_limit.credit_limit = 2728
    $ techguy_limit.save

    $ moneybags1 = CreditCard.where(owner_id:'1').first
    $ moneybags1.credit_limit = 200000
    $ moneybags1.save

    $ moneybags2 = CreditCard.where(owner_id:'1').second
    $ moneybags2.credit_limit = 45000
    $ moneybags2.save

    $ moneybags3 = CreditCard.where(owner_id:'1').last
    $ moneybags3.credit_limit = 200000
    $ moneybags3.save


Find the total credit extended to the owner with multiple credit cards

- query all the owners cards
- add all card limits



