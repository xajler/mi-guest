# Metaintellect Guest Application

![](https://github.com/xajler/mi-guest/raw/master/doc/miguest.png)

## TODO:
* Use image of "Form 8" and adding information on it for print.
* Guest alphabetical pagination by Last Name.
* Create links to switch languages currently available Croatian and English
* Create models for storing accommodations bills and printing them 

## DONE:
* Accommodation filtering by Year and Month.
* Autocomplete in guest for country and nationality.
* Autocomplete in accommodation for guest with value as ["last name" "first name" - "date if birth"].
* Localization to Croatian as default.

## Models
* Accommodation
* Guest
* Nationality
* Country
* Document Type
* Residence
* User

## Based on:
* Ruby 1.9.3
* Rails 3.2.6
* PostgreSQL (production)
* SQLite (development)
* Haml
* Twitter Bootstrap
* Simple Form
