class EmployeesController < ApplicationController

    before_action :find_employee, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end

    def show
    end

    def new
        @employee = Employee.new
    end

    def create
        Employee.create(params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id))
    end

    def update
        @employee.update(params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id))
    end

    def edit
    end

    private
    def find_employee
        @employee = Employee.find(params[:id])
    end

end
