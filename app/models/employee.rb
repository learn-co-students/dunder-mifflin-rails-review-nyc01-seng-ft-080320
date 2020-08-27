class Employee < ApplicationRecord
    belongs_to :dog
    validates_uniqueness_of :title, :alias

    def to_s
        self.first_name + " " + self.last_name
    end

end
