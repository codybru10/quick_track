class ServicesController < ApplicationController
  def index
    @client = Client.find(params[:client_id])
    @services = @client.services.all
  end

  def show
    @client = Client.find(params[:client_id])
    @service = Service.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @service = Service.new
  end

  def create
    @client = Client.find(params[:client_id])
    @service = Service.new(service_params)
    if @service.save
      redirect_to client_service_path(@client, @service)
    else
      render :new
    end
  end

  private
  def service_params
    params.require(:service).permit(:description, :client_id, :employee_id)
  end
end
