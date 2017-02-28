class ClientsController < ApplicationController

  def index
    @employee = current_employee
    @clients = Client.all
  end

  def show
    @employee = current_employee
    @client = Client.find(params[:id])
  end

  def new
    @employee = Employee.find(params[:employee_id])
    @client = Client.new
  end

  def create
    @employee = current_employee
    @client = @employee.clients.new(client_params)
    if @client.save
      redirect_to employee_client_path(@employee, @client)
    else
      render :new
    end
  end


private
def client_params
  params.require(:client).permit(:name, :address, :contact_name, :contact_email, :contact_number, :rate)
end

end
