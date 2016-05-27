class FaresController < ApplicationController
  before_action :set_fare, only: [:show, :update, :destroy]

  # GET /fares
  def index
    @fares = Fare.all

    render json: @fares
  end

  # GET /fares/1
  def show
    render json: @fare
  end

  # POST /fares
  def create
    @fare = Fare.new(fare_params)

    if @fare.save
      render json: @fare, status: :created, location: @fare
    else
      render json: @fare.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fares/1
  def update
    if @fare.update(fare_params)
      render json: @fare
    else
      render json: @fare.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fares/1
  def destroy
    @fare.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fare
      @fare = Fare.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fare_params
      params.permit(:fare_id, :price, :currency_type, :payment_method, :transfers, :transfer_duration)
    end
end
