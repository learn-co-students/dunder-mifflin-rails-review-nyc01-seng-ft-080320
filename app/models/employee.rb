class Employee < ApplicationRecord
    belongs_to :dog
    validate :is_valid?
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    private
    def is_valid?
        if Employee.find_by(alias: self.alias)
            errors.add(:alias, "Cannot be the same as someone else's")
        end
        if Employee.find_by(title: self.title)
            errors.add(:title, "Cannot be the same as someone else's")
        end
    end
end
