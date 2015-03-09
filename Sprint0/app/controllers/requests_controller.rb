class RequestsController < ApplicationController
    
    
    
    def form
        
    end
    
    def index
        @requests=Request.all
    end
    
    def show
        @request=Request.find(params[:id])
    end
    
    def new
    @request = Request.new
    end
   
   def create
   @request = Request.new(requests_params)
   @request.save
   end
  
  
 
  private
  def requests_params
    params.require(:request).permit(:reason, :user_email)
  end
  
  
     
end
