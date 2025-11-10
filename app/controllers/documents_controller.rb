class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to documents_path, notice: 'Document was successfully created.'
    else
      flash.now[:alert] = 'Error creating document. Please check the form.'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @document.update(document_params)
      redirect_to employee_path, notice: 'Document was successfully updated.'
    else
      flash.now[:alert] = 'Error updating document. Please check the form.'
      render :edit
    end
  end

  def destroy
    @document.destroy
    redirect_to employee_path, notice: 'Document was successfully deleted.'
  end

  private

  def set_document
    @document = Document.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to documents_path, alert: 'Document not found.'
  end

  def document_params
    params.require(:document).permit(:name, :doc_type, :employee_id)
  end
end
