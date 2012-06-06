class AccommodationsController < ApplicationController

  autocomplete :guest, :last_name, :full => true, :extra_data => [:first_name, :date_of_birth], :display_value => :to_autocomplete

  def index
    @accommodations = Accommodation.by_created_at_desc
  end

  def show
    @accommodation = Accommodation.find(params[:id])
  end

  def new
    @accommodation = Accommodation.new
  end

  def edit
    @accommodation = Accommodation.find(params[:id])
  end

  def create
    @accommodation = Accommodation.new(params[:accommodation])

    if @accommodation.save
      redirect_to @accommodation, notice: t(:accommodations_create_notice)
    else
      render action: "new"
    end
  end

  def update
    @accommodation = Accommodation.find(params[:id])

    if @accommodation.update_attributes(params[:accommodation])
      redirect_to @accommodation, notice: t(:accommodations_update_notice)
    else
      render action: "edit"
    end
  end

  def destroy
    @accommodation = Accommodation.find(params[:id])
    @accommodation.destroy

    redirect_to accommodations_url
  end
end
