require 'faker'

class DogNameStrategy > DogNameStrategy
    def get_animal_name()
        'DOG STRATEGY CALLED'
        Faker::Creature::Dog.name
    end
end
