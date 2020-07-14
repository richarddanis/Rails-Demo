require 'faker'

class DogNameStrategy < NameStrategy
    def get_animal_name()
        'DOG STRATEGY CALLED'
        Faker::Creature::Dog.name
    end
end
