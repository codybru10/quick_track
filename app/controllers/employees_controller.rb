class EmployeesController < ApplicationController
  before_action :authenticate_employee!

  def show
    @employee = current_employee
  end


end
