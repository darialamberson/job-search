# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Stage.create([{
                name: 'Inbound Lead',
                rank: 10
              }, {
                name: 'Outbound Lead',
                rank: 20
              }, {
                name: 'Recruiter Call',
                rank: 30
              }, {
                name: 'Conversational Call',
                rank: 40
              }, {
                name: 'Technical Call',
                rank: 50
              }, {
                name: 'Onsite Interview',
                rank: 60
              }, {
                name: 'Offer Extended',
                rank: 70
              }, {
                name: 'Closed',
                rank: 100
              }])
