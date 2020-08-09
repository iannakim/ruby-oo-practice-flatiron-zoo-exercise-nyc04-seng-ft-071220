class Animal
# An animal should be instantiated with the species (e.g. "Cat", "Dog", "Rat"), a numerical weight and a nickname.
# Keep in mind that the animal's species and nickname should not be able to change, but its weight can.
attr_reader :species, :nickname
attr_accessor :weight, :zoo

# Animal#nickname should return the nickname of the animal.
# Animal#weight should return the weight of the animal.
# Animal#species should return the species of the animal.


@all = []
    def initialize(species_arg, weight_arg, nickname_arg)
        @species = species_arg
        @weight = weight_arg
        @nickname = nickname_arg
        @@all << self
    end


    # Animal.all should return an array of all the animal instances.
    def self.all
        @@all
    end

    # Animal#zoo should return the zoo instance that the instance belongs to.
    # def zoo
    #     Zoo.all??? #there is no zoo information asked for??
    # end

    def find_by_species(species_arg)
        self.class.all.select {|animal| animal.species == species_arg}
    end

end




# Animal.find_by_species should take in an animal's species as an argument and return an array of all the animals, which are of that species.