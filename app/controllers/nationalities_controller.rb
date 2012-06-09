class NationalitiesController < ApplicationController

  def index
    @nationalities = Nationality.all
  end

  def new
    @nationality = Nationality.new
  end

  def edit
    @nationality = Nationality.find(params[:id])
  end

  def create
    @nationality = Nationality.new(params[:nationality])

    if @nationality.save
      flash[:notice] = t(:nationalities_create_notice)
      redirect_to :action => "index"
    else
      render action: "new"
    end
  end

  def update
    @nationality = Nationality.find(params[:id])

    if @nationality.update_attributes(params[:nationality])
      flash[:notice] = t(:nationalities_update_notice)
      redirect_to :action => "index"
    else
      render action: "edit"
    end
  end

  def destroy
    @nationality = Nationality.find(params[:id])
    @nationality.destroy

    redirect_to nationalities_url
  end
end
