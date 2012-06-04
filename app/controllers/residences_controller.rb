class ResidencesController < ApplicationController

  def index
    @residences = Residence.all
  end

  def show
    @residence = Residence.find(params[:id])
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
      redirect_to @residence, notice: t(:residences_create_notice)
    else
      render action: "new"
    end
  end

  def update
    @residence = Residence.find(params[:id])

    if @residence.update_attributes(params[:residence])
      redirect_to @residence, notice: t(:residences_update_notice)
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
