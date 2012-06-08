class GuestsController < ApplicationController

  autocomplete :country, :name, :full => true
  autocomplete :nationality, :name, :full => true

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def edit
    @guest = Guest.find(params[:id])
    @country_name = @guest.country.name
    @nationality_name = @guest.nationality.name
  end

  def create
    @guest = Guest.new(params[:guest])

    if @guest.save
      redirect_to @guest, notice: t(:guests_create_notice)
    else
      render action: "new"
    end
  end

  def update
    @guest = Guest.find(params[:id])

    if @guest.update_attributes(params[:guest])
      redirect_to @guest, notice: t(:guests_update_notice)
    else
      render action: "edit"
    end
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy

    redirect_to guests_url
  end
end
