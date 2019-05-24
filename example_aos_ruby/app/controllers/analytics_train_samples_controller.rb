class AnalyticsTrainSamplesController < ApplicationController
  before_action :set_analytics_train_sample, only: [:show, :edit, :update, :destroy]

  # GET /analytics_train_samples
  # GET /analytics_train_samples.json
  def index
    @analytics_train_samples = AnalyticsTrainSample.all
  end

  # GET /analytics_train_samples/1
  # GET /analytics_train_samples/1.json
  def show
  end

  # GET /analytics_train_samples/new
  def new
    @analytics_train_sample = AnalyticsTrainSample.new
  end

  # GET /analytics_train_samples/1/edit
  def edit
  end

  # POST /analytics_train_samples
  # POST /analytics_train_samples.json
  def create
    @analytics_train_sample = AnalyticsTrainSample.new(analytics_train_sample_params)

    respond_to do |format|
      if @analytics_train_sample.save
        format.html { redirect_to @analytics_train_sample, notice: 'Analytics train sample was successfully created.' }
        format.json { render :show, status: :created, location: @analytics_train_sample }
      else
        format.html { render :new }
        format.json { render json: @analytics_train_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytics_train_samples/1
  # PATCH/PUT /analytics_train_samples/1.json
  def update
    respond_to do |format|
      if @analytics_train_sample.update(analytics_train_sample_params)
        format.html { redirect_to @analytics_train_sample, notice: 'Analytics train sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @analytics_train_sample }
      else
        format.html { render :edit }
        format.json { render json: @analytics_train_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics_train_samples/1
  # DELETE /analytics_train_samples/1.json
  def destroy
    @analytics_train_sample.destroy
    respond_to do |format|
      format.html { redirect_to analytics_train_samples_url, notice: 'Analytics train sample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analytics_train_sample
      @analytics_train_sample = AnalyticsTrainSample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analytics_train_sample_params
      params.require(:analytics_train_sample).permit(:modelid, :analysableid, :timespliting, :fileid, :sampleids, :timecreated)
    end
end
