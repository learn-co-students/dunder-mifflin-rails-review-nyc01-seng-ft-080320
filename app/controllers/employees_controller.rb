class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        @dog = Dog.all
        @employee = Employee.create(emp_params)
        @employee.save
        redirect_to @employee 
    end 

# Thanks Cannigia!!! Stay safe!!!
    private 

    def emp_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end 


end
