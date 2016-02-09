class BiosController < ApplicationController
  def index
    @bios = Bio.all
  end

  def show
    @bio = Bio.find(find_bios)
  end

  def new
    @bio = Bio.new
  end

  def edit
    @bio = find_bios

  end

  def create
    @bio = Bio.create(bio_params)

    if @bio.save
      redirect_to @bio, notice: "Bio created successfully"
    else
      render 'new'
    end
  end

  def update
    @bio = find_bios
    if @bio.update_attributes(bio_params)
      flash[:success] = "Bio updated"
      redirect_to '/bios'
    else
      render 'edit'
    end
  end

  def destroy

  end

  private

  def find_bios
    @bio = Bio.find(params[:id])
  end

  def bio_params
    params.require(:bio).permit(:name, :position, :description, :avatar)
  end

end
