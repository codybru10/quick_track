class ClientsController < ApplicationController
  before_action :authenticate_employee!

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
    @total = @client.total
    @billable = @client.bill
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to client_path(@client)
    else
      render :new
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end


private
def client_params
  params.require(:client).permit(:name, :address, :contact_name, :contact_email, :contact_number, :rate)
end

end
