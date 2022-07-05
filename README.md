# Jungle

A mini e-commerce application built with Rails 6.1. The goal of this project was to use existing code style and approach to implement new features in unfamiliar territory.

## Final Product

_Jungle Main Page with sold-out items
![Main_Page](https://user-images.githubusercontent.com/100962211/177429224-dc48852d-3ee0-42b5-8d3b-af52387ae195.png)

_Products Details
![Product_Details](https://user-images.githubusercontent.com/100962211/177429238-6bac9860-d290-4bea-b416-bc556c6486b7.png)

_My Cart Page 
![My_Cart](https://user-images.githubusercontent.com/100962211/177429260-8bfb069d-6dd4-4950-bf04-cf8d82e0d013.png)

_About Us Page 
![About_Us](https://user-images.githubusercontent.com/100962211/177429280-a9dfd9fe-2054-492a-ac32-44a38281203a.png)

_Admin / Products Page 
![Admin_Product](https://user-images.githubusercontent.com/100962211/177429298-a0b3022e-c0e9-422c-b413-adc078aed7da.png)

## Main Features (Developed)

- Feature: Sold Out Badge
- Feature: Admin Categories
- Feature: User Authentication
- Enhancement: Order Details Page
- Bug Fix: Missing Admin Security
- Bug Fix: Checking Out with Empty Cart

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.
## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.
More information in their docs: <https://stripe.com/docs/testing#cards>
## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Webpack
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- Cypress
