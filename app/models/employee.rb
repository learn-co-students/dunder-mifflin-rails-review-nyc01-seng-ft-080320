class Employee < ApplicationRecord
    belongs_to :dog

    def to_s
        self.first_name + " " + self.last_name
    end

    def alias_valid?(a)
        !Employee.all.find {|employee| employee.alias == a}
    end

    def title_valid?(t)
        !Employee.all.find {|employee| employee.title == t}
    end

end
