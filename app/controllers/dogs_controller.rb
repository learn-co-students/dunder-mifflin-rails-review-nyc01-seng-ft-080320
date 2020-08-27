class DogsController < ApplicationController
    def index
        @dogs = Dog.all
        if params.include? :direction
            if params[:direction] == "asc"
                @dogs = @dogs.sort_by{|dog| dog.employees.count}
            elsif params[:direction] == "desc"
                @dogs = @dogs.sort_by{|dog| dog.employees.count}.reverse
            end
        end
    end

    def show
        @dog = Dog.find(params[:id])
    end
end
