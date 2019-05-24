class AnalyticsPredictionActionsController < ApplicationController
  before_action :set_analytics_prediction_action, only: [:show, :edit, :update, :destroy]

  # GET /analytics_prediction_actions
  # GET /analytics_prediction_actions.json
  def index
    @analytics_prediction_actions = AnalyticsPredictionAction.all
  end

  # GET /analytics_prediction_actions/1
  # GET /analytics_prediction_actions/1.json
  def show
  end

  # GET /analytics_prediction_actions/new
  def new
    @analytics_prediction_action = AnalyticsPredictionAction.new
  end

  # GET /analytics_prediction_actions/1/edit
  def edit
  end

  # POST /analytics_prediction_actions
  # POST /analytics_prediction_actions.json
  def create
    @analytics_prediction_action = AnalyticsPredictionAction.new(analytics_prediction_action_params)

    respond_to do |format|
      if @analytics_prediction_action.save
        format.html { redirect_to @analytics_prediction_action, notice: 'Analytics prediction action was successfully created.' }
        format.json { render :show, status: :created, location: @analytics_prediction_action }
      else
        format.html { render :new }
        format.json { render json: @analytics_prediction_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytics_prediction_actions/1
  # PATCH/PUT /analytics_prediction_actions/1.json
  def update
    respond_to do |format|
      if @analytics_prediction_action.update(analytics_prediction_action_params)
        format.html { redirect_to @analytics_prediction_action, notice: 'Analytics prediction action was successfully updated.' }
        format.json { render :show, status: :ok, location: @analytics_prediction_action }
      else
        format.html { render :edit }
        format.json { render json: @analytics_prediction_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics_prediction_actions/1
  # DELETE /analytics_prediction_actions/1.json
  def destroy
    @analytics_prediction_action.destroy
    respond_to do |format|
      format.html { redirect_to analytics_prediction_actions_url, notice: 'Analytics prediction action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analytics_prediction_action
      @analytics_prediction_action = AnalyticsPredictionAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analytics_prediction_action_params
      params.require(:analytics_prediction_action).permit(:predictionid, :userid, :actionname, :timecreated)
    end
end
