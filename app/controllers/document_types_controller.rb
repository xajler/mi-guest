class DocumentTypesController < ApplicationController

  def index
    @document_types = DocumentType.all
  end

  def show
    @document_type = DocumentType.find(params[:id])
  end

  def new
    @document_type = DocumentType.new
 end

  def edit
    @document_type = DocumentType.find(params[:id])
  end

  def create
    @document_type = DocumentType.new(params[:document_type])

    if @document_type.save
      redirect_to @document_type, notice: 'Document type was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @document_type = DocumentType.find(params[:id])

    if @document_type.update_attributes(params[:document_type])
      redirect_to @document_type, notice: 'Document type was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @document_type = DocumentType.find(params[:id])
    @document_type.destroy

     redirect_to document_types_url
  end
end
