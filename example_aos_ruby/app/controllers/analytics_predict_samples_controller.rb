class AnalyticsPredictSamplesController < ApplicationController
  before_action :set_analytics_predict_sample, only: [:show, :edit, :update, :destroy]

  # GET /analytics_predict_samples
  # GET /analytics_predict_samples.json
  def index
    @analytics_predict_samples = AnalyticsPredictSample.all
  end

  # GET /analytics_predict_samples/1
  # GET /analytics_predict_samples/1.json
  def show
  end

  # GET /analytics_predict_samples/new
  def new
    @analytics_predict_sample = AnalyticsPredictSample.new
  end

  # GET /analytics_predict_samples/1/edit
  def edit
  end

  # POST /analytics_predict_samples
  # POST /analytics_predict_samples.json
  def create
    @analytics_predict_sample = AnalyticsPredictSample.new(analytics_predict_sample_params)

    respond_to do |format|
      if @analytics_predict_sample.save
        format.html { redirect_to @analytics_predict_sample, notice: 'Analytics predict sample was successfully created.' }
        format.json { render :show, status: :created, location: @analytics_predict_sample }
      else
        format.html { render :new }
        format.json { render json: @analytics_predict_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytics_predict_samples/1
  # PATCH/PUT /analytics_predict_samples/1.json
  def update
    respond_to do |format|
      if @analytics_predict_sample.update(analytics_predict_sample_params)
        format.html { redirect_to @analytics_predict_sample, notice: 'Analytics predict sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @analytics_predict_sample }
      else
        format.html { render :edit }
        format.json { render json: @analytics_predict_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics_predict_samples/1
  # DELETE /analytics_predict_samples/1.json
  def destroy
    @analytics_predict_sample.destroy
    respond_to do |format|
      format.html { redirect_to analytics_predict_samples_url, notice: 'Analytics predict sample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analytics_predict_sample
      @analytics_predict_sample = AnalyticsPredictSample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analytics_predict_sample_params
      params.require(:analytics_predict_sample).permit(:modelid, :analysableid, :timespliting, :rangeindex, :sampleids, :timecreated, :timemodified)
    end
end
