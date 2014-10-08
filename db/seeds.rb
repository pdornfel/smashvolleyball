# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


positions = ['Outside Hitter', 'Middle', 'Right Side', 'Defensive Specialist', 'Libero', 'Setter']

positions.each do |position|
  Position.find_or_create_by(name: position)
end


Player.find_or_create_by(
  first_name: 'Paul',
  last_name: 'Dornfeld',
  dob: Date.parse('August 4 1989'),
  current_grade: '10th',
  height: 6.2,
  weight: 175,
  dominant_hand: "Left",
  school: "Newton North HS"
  )

Player.first.positions << Position.find_by(name: 'Right Side') if Player.first.positions.empty?