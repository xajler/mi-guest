class DocumentTypesController < ApplicationController

  def index
    @document_types = DocumentType.all
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
      flash[:notice] = t(:document_types_create_notice)
      redirect_to :action => "index"
    else
      render action: "new"
    end
  end

  def update
    @document_type = DocumentType.find(params[:id])

    if @document_type.update_attributes(params[:document_type])
      flash[:notice] = t(:document_types_update_notice)
      redirect_to :action => "index"
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
