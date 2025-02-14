class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      flash[:success] = 'Employee created successfully'
      redirect_to employees_path
    else
      flash[:error] = @employee.errors.full_messages
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
      flash[:success] = 'Employee updated successfully'
      redirect_to employee_path(@employee)  # redirect to the employee show page
    else
      flash[:error] = @employee.errors.full_messages
      render :edit
    end
  end

  def destroy
    if @employee.destroy
      flash[:success] = 'Employee deleted successfully'
      redirect_to employees_path  # redirect to the list of employees
    else
      flash[:error] = @employee.errors.full_messages
      redirect_to employees_path
    end
  end

  private

  # This method finds the employee based on the ID in params
  def set_employee
    @employee = Employee.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "Employee not found"
    redirect_to employees_path
  end

  # Strong parameter method to permit only allowed attributes
  def employee_params
    params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email, :city, :state, :country, :address_line_1, :address_line_2)
  end
end
