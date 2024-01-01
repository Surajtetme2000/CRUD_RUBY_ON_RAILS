class DocumentsController < ApplicationController
    def index
        @documents = Document.all        
    end

    def new 
        @document = Document.new
    end

    def create
        @document = Document.new(document_params)
        if @document.save
            redirect_to documents_path, notice: "Documents has been created successfully"
        else
            render :new
        end
    end

    def edit
        @document = Document.find(params[:id])
    end

    def update
        @document = Document.find(params[:id])
        if @document.update(document_params)
            redirect_to documents_path, notice: 'Documents has been Updated successfully'  
        else
            reder :edit
        end
    end

    def show
        @document = Document.find(params[:id])

    end
  
    def destroy
        @document = Document.find(params[:id])
        if @document.destroy
            redirect_to documents_path, notice: 'Document has been deleted successfully'
        end
    end

    private

    def document_params
        params.require(:document).permit(:name, :doc_type, :emp_id, :image)
    end
end