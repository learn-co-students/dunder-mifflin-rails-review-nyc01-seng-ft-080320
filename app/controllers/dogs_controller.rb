class DogsController < ApplicationController

    def index 
        @dogs = Dog.all
    end

    def show 
        @dog = Dog.find(params[:id])
        @employee = Employee.all
    end 


end
