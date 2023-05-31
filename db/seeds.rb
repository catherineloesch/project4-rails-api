# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: "bWayne70", display_name: "Bruce W.", password: 'vengance', age: 52)
User.create(username: "dPrince51", display_name: "Diana P.", password: 'themyscira', age: 71)
User.create(username: "cKent52", display_name: "Clark K.", password: 'kal-el', age: 52)
User.create(username: "vStone80", display_name: "Victor S.", password: 'booyah', age: 43)
User.create(username: "bAllen55", display_name: "Barry A.",  password: 'backinaflash', age: 68)
User.create(username: "aCurry41", display_name: "Arthur C.",  password: 'mera', age: 82)
User.create(username: "dGrayson84", display_name: "Richard JG", password: 'iamthestuffofnightmares', age: 39)

Job.create(user_id: 1, title: 'dog-walker twice a week')
Job.create(user_id: 1, title: 'cat-sitter on weekends')
Job.create(user_id: 2, title: 'dog sitter over holidays')
Job.create(user_id: 3, title: 'dog-walker twice a day')
Job.create(user_id: 4, title: 'dog sitter for 1 week')
