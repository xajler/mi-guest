# Metaintellect Guest Application

![](https://github.com/xajler/mi-guest/raw/master/doc/miguest.png)

## TODO:
* Add to Accommodation form: 
  * Number of Nights.
  * Price (infered from apartment type period price, can be overriden).
  * Rebate (Guest can have rebate and it will populate if it has one).
  * Total price.
  * The print of accommodation invoice.
* Add to Guest Rabat value that can be entered.
* Guest alphabetical pagination by Last Name.
* Create links to switch languages currently available Croatian and English.
* Create models for storing accommodations bills and printing them.

## Done:
* Use image of "Form 8a" and adding information on it for print.
* Accommodation filtering by Year and Month.
* Print the accommodation details on Croatian government form called "Form 8a".
* Auto-complete in guest for country and nationality.
* Auto-complete in accommodation for guest with value as ["last name" "first name" - "date of birth"].
* Localization to Croatian as default.

## Models
* Accommodation
* Guest
* Nationality
* Country
* Document Type
* Residence
* Apartment
* Apartment Type
* Period Price (for Apartment Type)

## Based on:
* Ruby 1.9.3
* Rails 3.2.8
* PostgreSQL (production)
* SQLite (development)
* Haml
* Twitter Bootstrap
* Simple Form
