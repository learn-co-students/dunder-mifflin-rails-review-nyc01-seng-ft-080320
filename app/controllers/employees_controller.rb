class EmployeesController < ApplicationController
  before_action :find_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employee = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)

    redirect_to employee_path(@employee)
  end

  def edit
  end

  def update
    @employee.update(employee_params)

    redirect_to employee_path(@employee)
  end

  def destroy
    @employee.destroy

    redirect_to employees_path
  end

  private

  def dog_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog)
  end

  def find_dog
    @employee = Employee.find(params[:id])
  end
end
