require 'faker'

class CatNameStrategy < NameStrategy
    def get_animal_name()
        puts 'CAT STRATEGY CALLED'
        Faker::Creature::Cat.name
    end
end
