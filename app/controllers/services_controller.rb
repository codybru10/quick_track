class ServicesController < ApplicationController
  before_action :authenticate_employee!

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

  def edit
    @client = Client.find(params[:client_id])
    @service = Service.find(params[:id])
  end

  def update
    @client = Client.find(params[:client_id])
    @service = Service.find(params[:id])
    if @service.update(service_params)
      redirect_to client_path(@client)
    else
      render :edit
    end
  end

  def destroy
    @client = Client.find(params[:client_id])
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to client_path(@client)
  end

  private
  def service_params
    params.require(:service).permit(:description, :date, :time, :client_id, :employee_id)
  end
end
