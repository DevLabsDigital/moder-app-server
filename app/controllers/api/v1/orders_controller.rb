class Api::V1::OrdersController < Api::V1::ApplicationController
    before_action :set_deliveryman

    def accept
        
        order = Order.pending.find(params[:id])
        order.set_deliveryman(@deliveryman)

        respond_to do |format|
            format.json{render json: OrderSerializer.new(order).serializable_hash.to_json}
        end
    end

    def update_status
        
        order = Order.find(params[:id])
        order.delivery_update

        respond_to do |format|
            format.json{render json: OrderSerializer.new(order).serializable_hash.to_json}
        end
    end

    def index
        orders = @deliveryman.orders

        respond_to do |format|
            format.json{render json: OrderSerializer.new(orders).serializable_hash.to_json}
        end
    end

    private
    def set_deliveryman
        @deliveryman = current_user
    end
   
end 