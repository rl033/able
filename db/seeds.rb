# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    Account.create(email: 'raymond@email.com', password: '12344321', accountable_id: 2, accountable_type: 'Student')
    Account.create(email: 'company1@email.com', password: '12344321', accountable_id: 1, accountable_type: 'Organization')
    Student.create(first_name: 'Raymond', last_name: 'Lin', school: 'UBC', location: 'Vancouver, BC', industry: 'Computer Software')
    Organization.create(name: 'Company1', location: 'Vancouver, BC', industry: 'Computer Software')
    Project.create(name: 'Calendar App', industry: 'Computer Software', location: 'Vancouver, BC')
    Project.create(name: 'To-do List', industry: 'Computer Software', location: 'Vancouver, BC')