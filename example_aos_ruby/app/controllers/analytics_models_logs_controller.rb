class AnalyticsModelsLogsController < ApplicationController
  before_action :set_analytics_models_log, only: [:show, :edit, :update, :destroy]

  # GET /analytics_models_logs
  # GET /analytics_models_logs.json
  def index
    @analytics_models_logs = AnalyticsModelsLog.all
  end

  # GET /analytics_models_logs/1
  # GET /analytics_models_logs/1.json
  def show
  end

  # GET /analytics_models_logs/new
  def new
    @analytics_models_log = AnalyticsModelsLog.new
  end

  # GET /analytics_models_logs/1/edit
  def edit
  end

  # POST /analytics_models_logs
  # POST /analytics_models_logs.json
  def create
    @analytics_models_log = AnalyticsModelsLog.new(analytics_models_log_params)

    respond_to do |format|
      if @analytics_models_log.save
        format.html { redirect_to @analytics_models_log, notice: 'Analytics models log was successfully created.' }
        format.json { render :show, status: :created, location: @analytics_models_log }
      else
        format.html { render :new }
        format.json { render json: @analytics_models_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytics_models_logs/1
  # PATCH/PUT /analytics_models_logs/1.json
  def update
    respond_to do |format|
      if @analytics_models_log.update(analytics_models_log_params)
        format.html { redirect_to @analytics_models_log, notice: 'Analytics models log was successfully updated.' }
        format.json { render :show, status: :ok, location: @analytics_models_log }
      else
        format.html { render :edit }
        format.json { render json: @analytics_models_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics_models_logs/1
  # DELETE /analytics_models_logs/1.json
  def destroy
    @analytics_models_log.destroy
    respond_to do |format|
      format.html { redirect_to analytics_models_logs_url, notice: 'Analytics models log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analytics_models_log
      @analytics_models_log = AnalyticsModelsLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analytics_models_log_params
      params.require(:analytics_models_log).permit(:modelid, :version, :target, :indicators, :timespliting, :score, :info, :dir, :timecreated, :usermodified)
    end
end
