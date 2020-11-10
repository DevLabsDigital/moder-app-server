
class DeliverymenController < ApplicationController
  
  before_action :check_role
  before_action :set_deliveryman, only: [:show, :edit, :update, :destroy]

  def check_role
    if !current_user.admin?
      redirect_to :orders, alert: "Você não tem permissão pra acessar essa área"
    end
  end
  # GET /deliverymen
  # GET /deliverymen.json
  def index
    @deliverymen = Deliveryman.all
  end

  # GET /deliverymen/1
  # GET /deliverymen/1.json
  def show
  end

  # GET /deliverymen/new
  def new
    @deliveryman = Deliveryman.new
  end

  # GET /deliverymen/1/edit
  def edit
  end

  # POST /deliverymen
  # POST /deliverymen.json
  def create
    @deliveryman = Deliveryman.new(deliveryman_params)

    respond_to do |format|
      if @deliveryman.save
        format.html { redirect_to @deliveryman, notice: 'Deliveryman was successfully created.' }
        format.json { render :show, status: :created, location: @deliveryman }
      else
        format.html { render :new }
        format.json { render json: @deliveryman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deliverymen/1
  # PATCH/PUT /deliverymen/1.json
  def update
    respond_to do |format|
      if @deliveryman.update(deliveryman_params)
        format.html { redirect_to @deliveryman, notice: 'Deliveryman was successfully updated.' }
        format.json { render :show, status: :ok, location: @deliveryman }
      else
        format.html { render :edit }
        format.json { render json: @deliveryman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliverymen/1
  # DELETE /deliverymen/1.json
  def destroy
    @deliveryman.destroy
    respond_to do |format|
      format.html { redirect_to deliverymen_url, notice: 'Deliveryman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deliveryman
      @deliveryman = Deliveryman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deliveryman_params
      params.require(:deliveryman).permit(:address, :birthday, :city, :cpf_cnpj, :email, :name, :neighborhood, :phone, :rg, :uf, :vehicle_color, :vehicle_license_plate, :vehicle_model, :vehicle_year)
    end
end
