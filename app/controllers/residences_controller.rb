class ResidencesController < ApplicationController
  # GET /residences
  # GET /residences.json
  def index
    @residences = Residence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @residences }
    end
  end

  # GET /residences/1
  # GET /residences/1.json
  def show
    @residence = Residence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @residence }
    end
  end

  # GET /residences/new
  # GET /residences/new.json
  def new
    @residence = Residence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @residence }
    end
  end

  # GET /residences/1/edit
  def edit
    @residence = Residence.find(params[:id])
  end

  # POST /residences
  # POST /residences.json
  def create
    @residence = Residence.new(params[:residence])

    respond_to do |format|
      if @residence.save
        format.html { redirect_to @residence, notice: 'Residence was successfully created.' }
        format.json { render json: @residence, status: :created, location: @residence }
      else
        format.html { render action: "new" }
        format.json { render json: @residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /residences/1
  # PUT /residences/1.json
  def update
    @residence = Residence.find(params[:id])

    respond_to do |format|
      if @residence.update_attributes(params[:residence])
        format.html { redirect_to @residence, notice: 'Residence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residences/1
  # DELETE /residences/1.json
  def destroy
    @residence = Residence.find(params[:id])
    @residence.destroy

    respond_to do |format|
      format.html { redirect_to residences_url }
      format.json { head :no_content }
    end
  end
end
