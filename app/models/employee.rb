class Employee < ApplicationRecord
<<<<<<< HEAD
    
=======
    belongs_to :dog

    def full_name
        "#{self.first_name} #{self.last_name}"
    end 

>>>>>>> 6116239882f5d731675a6c6b02b9af5d3e745346
end
