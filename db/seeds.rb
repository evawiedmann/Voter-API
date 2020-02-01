# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do |i|
  @state = State.create(name: Faker::Address.state,
    check_reg: Faker::Verb.past_participle, register: Faker::Verb.base, absentee: Faker::GreekPhilosophers.quote, next_election: Faker::Construction.heavy_equipment, reg_deadlines: Faker::Space.distance_measurement)
    5.times do
      @state.users.new(
        @state.users.new(
          full_name: Faker::, reg_status: Faker::, part: Faker::)      )
    end
    @state.save
    puts "Created #{State.count} States."
  end
