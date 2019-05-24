class AnalyticsIndicatorCalcsController < ApplicationController
  before_action :set_analytics_indicator_calc, only: [:show, :edit, :update, :destroy]

  # GET /analytics_indicator_calcs
  # GET /analytics_indicator_calcs.json
  def index
    @analytics_indicator_calcs = AnalyticsIndicatorCalc.all
  end

  # GET /analytics_indicator_calcs/1
  # GET /analytics_indicator_calcs/1.json
  def show
  end

  # GET /analytics_indicator_calcs/new
  def new
    @analytics_indicator_calc = AnalyticsIndicatorCalc.new
  end

  # GET /analytics_indicator_calcs/1/edit
  def edit
  end

  # POST /analytics_indicator_calcs
  # POST /analytics_indicator_calcs.json
  def create
    @analytics_indicator_calc = AnalyticsIndicatorCalc.new(analytics_indicator_calc_params)

    respond_to do |format|
      if @analytics_indicator_calc.save
        format.html { redirect_to @analytics_indicator_calc, notice: 'Analytics indicator calc was successfully created.' }
        format.json { render :show, status: :created, location: @analytics_indicator_calc }
      else
        format.html { render :new }
        format.json { render json: @analytics_indicator_calc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytics_indicator_calcs/1
  # PATCH/PUT /analytics_indicator_calcs/1.json
  def update
    respond_to do |format|
      if @analytics_indicator_calc.update(analytics_indicator_calc_params)
        format.html { redirect_to @analytics_indicator_calc, notice: 'Analytics indicator calc was successfully updated.' }
        format.json { render :show, status: :ok, location: @analytics_indicator_calc }
      else
        format.html { render :edit }
        format.json { render json: @analytics_indicator_calc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics_indicator_calcs/1
  # DELETE /analytics_indicator_calcs/1.json
  def destroy
    @analytics_indicator_calc.destroy
    respond_to do |format|
      format.html { redirect_to analytics_indicator_calcs_url, notice: 'Analytics indicator calc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analytics_indicator_calc
      @analytics_indicator_calc = AnalyticsIndicatorCalc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analytics_indicator_calc_params
      params.require(:analytics_indicator_calc).permit(:starttime, :endtime, :contextid, :sampleorign, :sampleid, :indicator, :value, :timecreated)
    end
end
