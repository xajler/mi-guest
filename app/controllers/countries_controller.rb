class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def edit
    @country = Country.find(params[:id])
  end

  def create
    @country = Country.new(params[:country])

    if @country.save
      flash[:notice] = t(:countries_create_notice)
      redirect_to action: "index"
    else
      render action: "new"
    end
  end

  def update
    @country = Country.find(params[:id])

    if @country.update_attributes(params[:country])
      flash[:notice] = t(:countries_update_notice)
      redirect_to action: "index"
    else
      render action: "edit"
    end
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy

    redirect_to countries_url
  end
end