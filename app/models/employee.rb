class Employee < ApplicationRecord
    validates :title, uniqueness: true
    validates :alias, uniqueness: true
    belongs_to :dog


    def name
        "#{first_name} #{last_name}"
    end
end
