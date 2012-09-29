class ApartmentsController < ApplicationController
  autocomplete :apartment_type, :name, full: true

  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
  end

  def edit
    @apartment = Apartment.find(params[:id])
    @apartment_type_name = @apartment.apartment_type.name
  end

  def create
    @apartment = Apartment.new(params[:apartment])

    if @apartment.save
      flash[:notice] = t(:apartments_create_notice)
      redirect_to action: "index"
    else
      render action: "new"
    end
  end

  def update
    @apartment = Apartment.find(params[:id])

    if @apartment.update_attributes(params[:apartment])
      flash[:notice] = t(:apartments_update_notice)
      redirect_to action: "index"
    else
      render action: "edit"
    end
  end

  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy

    redirect_to apartments_url
  end
end
