class AccommodationsController < ApplicationController

  autocomplete :guest, :last_name, :full => true, :extra_data => [:first_name, :date_of_birth], :display_value => :to_autocomplete

  def index
    @accommodations = Accommodation.by_created_at_desc
  end

  def print
    @accommodation = Accommodation.find(params[:accommodation_id])
  end

  def new
    @accommodation = Accommodation.new
  end

  def edit
    @accommodation = Accommodation.find(params[:id])
    @guest_name = @accommodation.guest.to_autocomplete
  end

  def create
    @accommodation = Accommodation.new(params[:accommodation])

    if @accommodation.save
      flash[:notice] = t(:accommodations_create_notice)
      redirect_to :action => "index"
    else
      render action: "new"
    end
  end

  def update
    @accommodation = Accommodation.find(params[:id])

    if @accommodation.update_attributes(params[:accommodation])
      flash[:notice] = t(:accommodations_update_notice)
      redirect_to :action => "index"
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
