class ServicesController < ApplicationController
  before_action :find_service, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @services = Service.all.order("created_at desc")
  end

  def new
    @service = Service.new
  end

  def edit
    @service = find_service
  end

  def create
    @service = Service.new service_params

    if @service.save
      redirect_to @service, notice: "Service created successfully"
    else
      render 'new'
    end
  end

  def show

  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(service_params)
      flash[:success] = "Service updated"
      redirect_to @service
    else
      render 'edit'
    end
  end

  private

  def find_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:service_name, :service_description, :pic)
  end
end
