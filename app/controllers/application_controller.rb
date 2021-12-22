class ApplicationController < ActionController::API
    before_action :dog_house,only:[:show]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


end
 
private

#RESCUE------------------------------------------------------------------------

    def render_not_found_response
        render json: { error: "Dog house not found" }, status: :not_found
    end
    
#Dog_house------------------------------------------------------------------------

    def dog_house 
        DogHouse.find(params[:id])
    end