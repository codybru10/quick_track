class InvoicesController < ApplicationController

  def index
    @client = Client.find(params[:client_id])
  end

end
