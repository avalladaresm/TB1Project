class ClientsController < ApplicationController
  before_action :get_client, only: [:show, :edit, :destroy, :update]

  #http_basic_authenticate_with name: "messi", password: "holaa", expect: :index

  def index
    @clients = Client.order(:id)
  end

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to @client
    else 
      render :new
    end
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to @client
    else
      render :edit
    end  
  end

  def destroy
    @client.destroy
    redirect_to clients_path
  end

  private
  def get_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:NAME_CLIENT, :TELEPHONE_CLIENT, :WEBSITE_CLIENT, :EMAIL_CLIENT, :COUNTRY_CLIENT, :ADDRESS_CLIENT)
  end
end