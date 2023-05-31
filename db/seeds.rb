# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: "Steve", password: '123', age: 30)
User.create(username: "Nat", password: '123', age: 30)
User.create(username: "Clint", password: '123', age: 30)
User.create(username: "Bruce", password: '123', age: 30)
User.create(username: "Tony", password: '123', age: 30)
User.create(username: "Pepper", password: '123', age: 30)
User.create(username: "Happy", password: '123', age: 30)
User.create(username: "Rhodey", password: '123', age: 30)
User.create(username: "Nick", password: '123', age: 30)
User.create(username: "Phil", password: '123', age: 30)


Job.create(user_id: 1, title: 'captain')
Job.create(user_id: 2, title: 'spy')
Job.create(user_id: 5, title: 'Sponsor')
Job.create(user_id: 9, title: 'Leader')
Job.create(user_id: 3, title: 'backup')
