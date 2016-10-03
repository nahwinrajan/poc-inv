= README

==Development Phase
=== V 0.1 - PoC
- products
  - CRUD feature
  - Test: Unit, Function, Interaction
  - Looks and stylesheets
- User
  - devise
  - CRUD + Invitation
  - recover account
  - Main - admin
  - Test: Unit, Function, Interaction
  - Looks and stylesheets
- Client
  - CRUD
  - Test: Unit, Function, Interaction
  - Look and style
- Transaction
  - CRUD
  - Test: Unit, Function, Interaction
  - Look and style
  ---------------------------

==Database
User
- email
- password
- phone
- devise: revocerable, invite, no remember me

Client
- Name
- Address
- Phone
- Contact Person Name
- Contact Person phone
- Contact Person e-mail

Product
- Name
- Quantity
- base_price


Transaction
- Client ID
- Datetime
=> has many trx Detail
=> has many Clients

Transaction Detail
- Item ID
- Item Quantity
- Capital at time
- Sold Price
- discount
=> has many products
=> belongs to a trx
