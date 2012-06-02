class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
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
      redirect_to @country, notice: 'Country was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @country = Country.find(params[:id])

    if @country.update_attributes(params[:country])
      redirect_to @country, notice: 'Country was successfully updated.'
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
