class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update, :create]

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params)
    end

    def show
    end

    def edit
    end

    def update
        @employee.update(employee_params)
        # if @employee.update(employee_params)
        # else
        #     puts "The title or alias has already been selected. Please try again."
        #     redirect_to edit_employee_path(@employee)
        # end
        # Employee.all.each do |employee|
        #     if employee.title != @employee.title
        #         @employee.title
        #     elsif employee.alias != @employee.alias
        #         @employee.alias
        #     else 
        #     puts "The title or alias has already been selected. Please try again."   
        #     end
        # end 
       redirect_to edit_employee_path(@employee)
    end


    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_ur)
    end
        

    def find_employee
        @employee = Employee.find(params[:id])
    end

end
