== README

*Database
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
- Capital
- Category


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
=> has many items
=> belongs to a trx
