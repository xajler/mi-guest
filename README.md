# Metaintellect Guest Application

![](https://github.com/xajler/mi-guest/raw/master/doc/miguest.png)

## TODO:
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

## Based on:
* Ruby 1.9.3
* Rails 3.2.6
* PostgreSQL (production)
* SQLite (development)
* Haml
* Twitter Bootstrap
* Simple Form
