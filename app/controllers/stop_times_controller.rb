class StopTimesController < ApplicationController
  before_action :set_stop_time, only: [:show, :update, :destroy]

  # GET /stop_times
  def index
    @stop_times = StopTime.all

    render json: @stop_times
  end

  # GET /stop_times/1
  def show
    render json: @stop_time
  end

  # POST /stop_times
  def create
    @stop_time = StopTime.new(stop_time_params)

    if @stop_time.save
      render json: @stop_time, status: :created, location: @stop_time
    else
      render json: @stop_time.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stop_times/1
  def update
    if @stop_time.update(stop_time_params)
      render json: @stop_time
    else
      render json: @stop_time.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stop_times/1
  def destroy
    @stop_time.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stop_time
      @stop_time = StopTime.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stop_time_params
      params.permit(:trip_id, :arrival_time, :departure_time, :stop_sequence, :stop_id)
    end
end
