class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
        a_check = @employee.alias_valid?(@employee.alias)
        t_check = @employee.title_valid?(@employee.title)
        if a_check && t_check
            @employee.save
            redirect_to employee_path(@employee)
        else
            redirect_to employees_path
        end
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        a_check = @employee.alias_valid?(@employee.alias)
        t_check = @employee.title_valid?(@employee.title)
        if a_check && t_check
            @employee.update(employee_params)
            redirect_to employee_path(@employee)
        else
            redirect_to employees_path
        end
    end

    private
    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

end
