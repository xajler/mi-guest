class ApartmentTypesController < ApplicationController
  def index
    @apartment_types = ApartmentType.all
  end

  def new
    @apartment_type = ApartmentType.new
 end

  def edit
    @apartment_type = ApartmentType.find(params[:id])
  end

  def create
    @apartment_type = ApartmentType.new(params[:apartment_type])

    if @apartment_type.save
      flash[:notice] = t(:apartment_types_create_notice)
      redirect_to action: "index"
    else
      render action: "new"
    end
  end

  def update
    @apartment_type = ApartmentType.find(params[:id])

    if @apartment_type.update_attributes(params[:apartment_type])
      flash[:notice] = t(:apartment_types_update_notice)
      redirect_to action: "index"
    else
      render action: "edit"
    end
  end

  def destroy
    @apartment_type = ApartmentType.find(params[:id])
    @apartment_type.destroy

     redirect_to apartment_types_url
  end
end