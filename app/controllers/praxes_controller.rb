class PraxesController < ApplicationController
    def index
        @prax = Prax.all
    end
    
    def new
        @prax = Prax.new
    end
    
    def edit
        @prax = Prax.find(params[:id])
    end
    
    def create
        @prax = Prax.new(prax_params)
        if @prax.save
            flash[:notice] = "Job was succesfully created!"
            redirect_to prax_path(@prax)
        else
            render 'new'
        end
    end
    
    def update
        @prax = Prax.find(params[:id])
        if @prax.update(prax_params)
            flash[:notice] = "Job was succesfully updated!"
            redirect_to praxes_path(@prax)
        else
            render 'edit'
        end
    end
    
    def show
        @prax = Prax.find(params[:id])
    end
    

    private
        def prax_params
            params.require(:prax).permit(:from, :till, :title, :description, :company, :job, :sector)
        end
end