class CareshipsController < ApplicationController
  before_action :set_careship, only: [:show, :edit, :update, :destroy]

  # GET /careships
  # GET /careships.json
  def index
    @careships = Careship.all
  end

  # GET /careships/1
  # GET /careships/1.json
  def show
  end

  # GET /careships/new
  def new
    @careship = Careship.new
  end

  # GET /careships/1/edit
  def edit
  end

  # POST /careships
  # POST /careships.json
  def create
    @careship = Careship.new(careship_params)

    respond_to do |format|
      if @careship.save
        format.html { redirect_to @careship, notice: 'Careship was successfully created.' }
        format.json { render :show, status: :created, location: @careship }
      else
        format.html { render :new }
        format.json { render json: @careship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /careships/1
  # PATCH/PUT /careships/1.json
  def update
    respond_to do |format|
      if @careship.update(careship_params)
        format.html { redirect_to @careship, notice: 'Careship was successfully updated.' }
        format.json { render :show, status: :ok, location: @careship }
      else
        format.html { render :edit }
        format.json { render json: @careship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /careships/1
  # DELETE /careships/1.json
  def destroy
    @careship.destroy
    respond_to do |format|
      format.html { redirect_to careships_url, notice: 'Careship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_careship
      @careship = Careship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def careship_params
      params.fetch(:careship, {})
    end
end
