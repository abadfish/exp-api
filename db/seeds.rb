# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

remi = User.create(name: 'Remi', role: 1)
gus = User.create(name: 'Gus', role: 1)
coffee = Product.create(product_name: 'Coffee', product_type: 0)
lawn = Product.create(product_name: 'Lawn mowing', product_type: 1)
Subscription.create(user: remi, product: coffee, sku: 'COF1W')
Subscription.create(user: remi, product: lawn, sku: 'LAWN1W')
Subscription.create(user: gus, product: coffee, sku: 'COF3W')

