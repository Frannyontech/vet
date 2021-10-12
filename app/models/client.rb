class Client < ApplicationRecord
    has_many :pets
    
    def count_pets
        self.pets.count #metodo instancia de mascotas
    end
end
