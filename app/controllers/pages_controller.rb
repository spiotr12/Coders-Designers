class PagesController < ApplicationController
  def index
    # @bios = Bio.all
    @projects = Project.all
    @services = Service.all
  end


end
