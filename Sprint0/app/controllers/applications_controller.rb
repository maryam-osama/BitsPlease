class ApplicationsController < ApplicationController
    
    def new 
    end
    
     def show
    @application = Application.find(params[:id])
    end
    def create 
        @application = Application.new(application_params)
        @application.save
        
        @application.publisher_email  = current_user.email
        @application.save
        redirect_to @application
    end
    
    private
     def application_params
    params.require(:application).permit(:appname, :description, :price)
     end
end
    
    

