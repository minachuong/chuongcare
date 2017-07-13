class CareReceiversController < ApplicationController
  before_action :set_care_receiver, only: [:show, :edit, :update, :share, :destroy]

  # GET /care_receivers
  # GET /care_receivers.json
  def index
    # @care_receivers = CareReceiver.all
  end

  # GET /care_receivers/1
  # GET /care_receivers/1.json
  def show
  end

  # GET /care_receivers/new
  def new
    @care_receiver = CareReceiver.new
  end

  # GET /care_receivers/1/edit
  def edit
  end

  # POST /care_receivers
  # POST /care_receivers.json
  def create
    @care_receiver = CareReceiver.create(care_receiver_params)
    respond_to do |format|
      if @care_receiver.save
        @care_receiver.generate_careship(current_user.id)
        format.html { redirect_to @care_receiver, notice: 'CareReceiver was successfully created.' }
        format.json { render :show, status: :created, location: @care_receiver }
      else
        format.html { render :new }
        format.json { render json: @care_receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /care_receivers/1
  # PATCH/PUT /care_receivers/1.json
  def update
    respond_to do |format|
      if @care_receiver.update(care_receiver_params)
        format.html { redirect_to @care_receiver, notice: 'CareReceiver was successfully updated.' }
        format.json { render :show, status: :ok, location: @care_receiver }
      else
        format.html { render :edit }
        format.json { render json: @care_receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  def share
    respond_to do |format|
      user_id = User.find_by_email(care_receiver_params[:care_receiver][:email]).id
      if @care_receiver.generate_careship(user_id)
        format.html { redirect_to @care_receiver, notice: 'CareReceiver was successfully shared.' }
        format.json { render :show, status: :ok, location: @care_receiver }
      else
        format.html { render :edit }
        format.json { render json: @care_receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /care_receivers/1
  # DELETE /care_receivers/1.json
  def destroy
    @care_receiver.destroy
    respond_to do |format|
      format.html { redirect_to care_receivers_url, notice: 'CareReceiver was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_care_receiver
      @care_receiver = CareReceiver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def care_receiver_params
      # actions_require_care_receiver = ["create"]
      if params[:action] == "create"
        params.require(:care_receiver).permit(:id, :first_name, :last_name)
      else
        params.permit(:id, :first_name, :last_name, care_receiver: [:email])
      end
    end
end
