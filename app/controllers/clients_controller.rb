class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.paginate(:page => params[:page], :per_page => 20)
  end

  def show
  end

  def new
    @client = Client.new
  end

  def edit
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      flash[:success] = 'Client was successfully created.'
    else
      render 'new'
    end
  end

  def update
    respond_to do |format|
      if @client.update(client_params)
        flash[:success] = 'Client was successfully updated.'
        redirect_to @client
      else
        render 'edit'
      end
    end
  end

  def destroy
    @client.destroy
      flash[:success] = 'Client was successfully removed.'
      redirect_to clients_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:name, :address, :phone, :email)
    end
end
