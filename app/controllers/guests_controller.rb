class GuestsController < ApplicationController

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
  end

  def create
    @guest = Guest.new(params[:guest])

    if @guest.save
      redirect_to @guest, notice: 'Guest was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @guest = Guest.find(params[:id])

    if @guest.update_attributes(params[:guest])
      redirect_to @guest, notice: 'Guest was successfully updated.'
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
