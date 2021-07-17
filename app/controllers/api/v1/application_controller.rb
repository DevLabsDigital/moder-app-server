class Api::V1::ApplicationController < ActionController::Base
    before_action :authenticate_request
    skip_before_action :verify_authenticity_token
    attr_reader :current_user
    attr_reader :using_web_session
  
  
    def authenticate_request
      if(!session[:user_id])
        @current_user = AuthorizeApiRequest.call(request.headers).result
        render json: { error: 'Not Authorized' }, status: 401 unless @current_user
      end
    end
  
    def authenticate_web_request
      @current_user ||= Deliveryman.find(session[:user_id]) if session[:user_id]
      @using_web_session = true
      render text: "nao autorizado", status: 401 unless @current_user
    end  
  
   
  end
  