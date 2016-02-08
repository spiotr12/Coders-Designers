class BiosController < ApplicationController
  def index
    @bios = Bio.all
  end

  def show

  end

  def new
    @bio = Bio.new
  end

  def edit
    @bio = find_bios
  end

  def create
    @bio = Bio.new bio_params

    if @bio.save
      redirect_to @bio, notice: "Bio created successfully"
    else
      render 'new'
    end
  end

  def destroy

  end

  private

  def find_bios
    @bio = Bio.find(params[:id])
  end

  def bio_params
    params.require(:bio).permit(:name, :position, :description)
  end

end
