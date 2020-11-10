class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:finalize, :finalize_save]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: :set_current_company

  def set_current_company
    @setted = current_user.set_current_company(params[:company_id])
    
    respond_to do |format|
      format.json{render json: @setted}
    end
  end
  

  # GET /users
  # GET /users.json
  def index
    @users = User.all.paginate(per_page: 10, page: params[:page])
  end

  def autocomplete
    @users = User.where("soundex(email) = soundex(?)", params[:query])

    respond_to do |format|
      format.json{render json: @users}
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  def finalize
    cookies[:step] ||= 0
    @user = User.find_by_email_hash(params[:verification_code])
    respond_to do |format|
      format.html{render "finalize_step_#{cookies[:step].to_i + 1}"}  
    end
  end

  def finalize_save
    cookies[:step] ||= 0
    @user = User.find_by_email_hash(params[:verification_code])
    @user.update(finalize_user_params)
    if cookies[:step].to_i == 0
      has_error = @user.errors.any?
    elsif cookies[:step].to_i == 1
      has_error = @user.errors.any?
    end

    if has_error
      
    else
      cookies[:step] = cookies[:step].to_i + 1
    end

    respond_to do |format|
      if cookies[:step].to_i == 2
        cookies.delete(:step)
        
        flash[:notice] = 'Cadastro finalizado com sucesso'
        format.html{ redirect_to new_user_session_path }
      else
        format.html{render "finalize_step_#{cookies[:step] + 1}"}    
      end
      
    end

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def finalize_user_params
      params.require(:user).permit(:email, :password, :password_confirmation, profile_attributes: [:name, :cpf, :phone])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_scope, :email, profile_attributes: [:id, :name, :company_id, :role_id])
    end
end
