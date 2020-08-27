class Dog < ApplicationRecord
    has_many :owners, foreign_key: "dog_id", class_name: "Employee"

    def dog_info
        "Name: " + self.name + "| Breed: " + self.breed + "| Age: " + self.age
    end
end