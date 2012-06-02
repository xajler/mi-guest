class NationalitiesController < ApplicationController

  def index
    @nationalities = Nationality.all
  end

  def show
    @nationality = Nationality.find(params[:id])
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
      redirect_to @nationality, notice: 'Nationality was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @nationality = Nationality.find(params[:id])

    if @nationality.update_attributes(params[:nationality])
      redirect_to @nationality, notice: 'Nationality was successfully updated.'
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
