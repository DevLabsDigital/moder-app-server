class Api::V1::DeliverymenController < Api::V1::ApplicationController
    
    def fetch_data
        deliveryman = current_user

        respond_to do |format|
            format.json{render json: DeliverymanSerializer.new(deliveryman).serializable_hash.to_json}
        end
    end

    def toggle_online
        current_user.is_online = params[:is_online]
        current_user.save
        respond_to do |format|
            format.json{render json: {is_online: current_user.is_online}}
        end
    end
   
end 