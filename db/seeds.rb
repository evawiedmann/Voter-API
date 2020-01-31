# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_states
  end

  def generate_states
    20.times do |i|
      state = State.create!(
        name: Faker::Book.author,
        check_reg: Faker::Movie.state
        register: Faker::Movie.state
        absentee: Faker::Movie.state
        next_election: Faker::Movie.state
        reg_deadlines: Faker::Movie.state
      )
      # puts "State #{i}: Author is #{state.name} and quotation is '#{state.check_reg}'."
    end
  end
end

Seed.begin
