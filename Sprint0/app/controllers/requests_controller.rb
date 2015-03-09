class RequestsController < ApplicationController
    def form
        
    end
    def show
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
