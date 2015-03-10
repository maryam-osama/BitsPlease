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
   
  
  def destroy
   @request = Request.find(params[:id])
  @request.destroy
   @request.save
  current_user.publisher = true
  @current_user.save
   redirect_to requests_path
   
end
  
 
  private
  def requests_params
    params.require(:request).permit(:reason, :user_email)
  end
 
end
