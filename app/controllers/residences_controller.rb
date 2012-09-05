class ResidencesController < ApplicationController

  def index
    @residences = Residence.all
  end

  def new
    @residence = Residence.new
  end

  def edit
    @residence = Residence.find(params[:id])
  end

  def create
    @residence = Residence.new(params[:residence])

    if @residence.save
      flash[:notice] = t(:residences_create_notice)
      redirect_to action: "index"
    else
      render action: "new"
    end
  end

  def update
    @residence = Residence.find(params[:id])

    if @residence.update_attributes(params[:residence])
      flash[:notice] = t(:residences_update_notice)
      redirect_to action: "index"
    else
      render action: "edit"
    end
  end

  def destroy
    @residence = Residence.find(params[:id])
    @residence.destroy

    redirect_to residences_url
  end
end
