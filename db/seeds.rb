# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all


ingredient1 = Ingredient.create(name: "lemon")
ingredient2 = Ingredient.create(name: "ice")
ingredient3 = Ingredient.create(name: "mint leaves")

cocktail1 = Cocktail.create(name: "Gin")
cocktail2 = Cocktail.create(name: "Whisky")

Dose.create(cocktail: cocktail1, ingredient: ingredient1, description: "Gin Tonic with lemons")
Dose.create(cocktail: cocktail2, ingredient: ingredient2, description: "Whisky with ice")
