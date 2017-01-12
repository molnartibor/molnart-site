class PraxesController < ApplicationController
   before_action :require_logged, only: [ :edit, :update, :destroy ]
   #before_action :require_admin, only: [ :edit, :update, :destroy]
   
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
            flash[:success] = "Job was succesfully created!"
            redirect_to prax_path(@prax)
            
        else
            render 'new'
        end
    end
    
    def update
        @prax = Prax.find(params[:id])
        if @prax.update(prax_params)
            flash[:success] = "Job was succesfully updated!"
            redirect_to praxes_path(@prax)
        else
            render 'edit'
        end
    end
    
    def show
        @prax = Prax.find(params[:id])
    end
    
    def destroy
        @prax = Prax.find(params[:id])
        @prax.destroy
        flash[:danger] = "Job was sucessfully deleted"
        redirect_to praxes_path
    end

    private
        def require_logged
            if logged_in?
            else
                flash[:danger] = "Only logged users can perform that action"
                redirect_to praxes_path
            end
        end
        
        def prax_params
            params.require(:prax).permit(:from, :till, :title, :description, :positiv, :company, :company_text)
        end
end