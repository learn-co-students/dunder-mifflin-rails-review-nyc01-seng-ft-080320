class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end

    def show

    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        @employee = Employee.new(employee_params)
        @dogs = Dog.all
        if @employee.valid?
            @employee.save
            redirect_to employee_path(@employee)
        else
            render :new
        end
    end

    def edit
       @dogs = Dog.all
    end

    def update
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end

    private
    def employee_params
        params.require(:employee).permit(:first_name,
        :last_name,
        :alias,
        :title,
        :office,
        :img_url,
        :dog_id)
    
    end

    def find_employee
        @employee = Employee.find(params[:id])
    end

end
