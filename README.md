# pizza_shop

## Description
This is a 'mini' Rails application that implements associations. It is an API for tracking pizza restaurants that allows users to create, read, update, and delete restaurants, pizzas, and restaurant pizzas. It features three resources and adheres to certain guidelines such as implementing specific routes and returning JSON data in a specific format.

## Getting Started
To get started, please follow the instructions below:

1.Create a new Rails project.
2.Create a new GitHub repository and ensure that it is private.
3.Add your team member(s) as contributors to the project.
4.Clone the repository to your local machine.
5.Install dependencies by running the command `bundle install`.
6.Run database migrations by running the command `rails db:migrate`.
7.Seed the database by running the command `rails db:seed`.
8.Start the server by running the command `rails s`.

## Models
The application has three database tables:

1.`restaurants` - stores restaurant information.
2.`pizzas` - stores pizza information.
3.`restaurant_pizzas` - stores information about the relationship between restaurants and pizzas.

The following relationships exist:

- A `Restaurant` has many `Pizza`s through `RestaurantPizza`
A `Pizza` has many `Restaurants` through `RestaurantPizza`
A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`

## Validations
The `RestaurantPizza` model has a validation that requires a `price` between 1 and 30.

## Routes
The following routes have been implemented:

- `GET /restaurants` - returns a list of all restaurants in JSON format
- `GET /restaurants/:id` - returns the details of a specific restaurant in JSON format, including the pizzas served by that restaurant
- `DELETE /restaurants/:id` - deletes a specific restaurant from the database along with any `RestaurantPizzas` that are associated with it
- `GET /pizzas` - returns a list of all pizzas in JSON format
- `POST /restaurant_pizzas` - creates a new `RestaurantPizza` that is associated with an existing `Pizza` and `Restaurant`

All routes return JSON data in a specific format as outlined in the project requirements.

## Author
This project was created by Aisha mohamed

## Liscence
This project is licensed by MIT liscence.