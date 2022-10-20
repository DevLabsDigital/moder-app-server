

class Api::V1::UsersController < Api::V1::ApplicationController
    skip_before_action :authenticate_request
    
    def create
        @user = Deliveryman.new(user_params)
        
        respond_to do |format|
            if @user.save
            format.html { redirect_to @user, notice: 'User was successfully created.' }
            format.json { render json: @user}
            else
            format.html { render :new }
            format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
        end

    private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
        {
            "email"=>params[:email],  
            "name"=>params[:name],
            "cpf_cnpj"=>params[:cpf],
            "phone"=>params[:phone],
            "vehicle_model"=> params[:vehicle],
            "cep"=>params[:cep],
            "address"=>params[:address],
            "neighborhood"=>params[:district],
            "uf"=>params[:state],
            "city"=>params[:city],
            
        }
    end
end