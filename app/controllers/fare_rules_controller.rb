class FareRulesController < ApplicationController
  before_action :set_fare_rule, only: [:show, :update, :destroy]

  # GET /fare_rules
  def index
    @fare_rules = FareRule.all

    render json: @fare_rules
  end

  # GET /fare_rules/1
  def show
    render json: @fare_rule
  end

  # POST /fare_rules
  def create
    @fare_rule = FareRule.new(fare_rule_params)

    if @fare_rule.save
      render json: @fare_rule, status: :created, location: @fare_rule
    else
      render json: @fare_rule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fare_rules/1
  def update
    if @fare_rule.update(fare_rule_params)
      render json: @fare_rule
    else
      render json: @fare_rule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fare_rules/1
  def destroy
    @fare_rule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fare_rule
      @fare_rule = FareRule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fare_rule_params
      params.permit(:route_id, :fare_id )
    end
end
