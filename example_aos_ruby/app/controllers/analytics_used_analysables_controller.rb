class AnalyticsUsedAnalysablesController < ApplicationController
  before_action :set_analytics_used_analysable, only: [:show, :edit, :update, :destroy]

  # GET /analytics_used_analysables
  # GET /analytics_used_analysables.json
  def index
    @analytics_used_analysables = AnalyticsUsedAnalysable.all
  end

  # GET /analytics_used_analysables/1
  # GET /analytics_used_analysables/1.json
  def show
  end

  # GET /analytics_used_analysables/new
  def new
    @analytics_used_analysable = AnalyticsUsedAnalysable.new
  end

  # GET /analytics_used_analysables/1/edit
  def edit
  end

  # POST /analytics_used_analysables
  # POST /analytics_used_analysables.json
  def create
    @analytics_used_analysable = AnalyticsUsedAnalysable.new(analytics_used_analysable_params)

    respond_to do |format|
      if @analytics_used_analysable.save
        format.html { redirect_to @analytics_used_analysable, notice: 'Analytics used analysable was successfully created.' }
        format.json { render :show, status: :created, location: @analytics_used_analysable }
      else
        format.html { render :new }
        format.json { render json: @analytics_used_analysable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytics_used_analysables/1
  # PATCH/PUT /analytics_used_analysables/1.json
  def update
    respond_to do |format|
      if @analytics_used_analysable.update(analytics_used_analysable_params)
        format.html { redirect_to @analytics_used_analysable, notice: 'Analytics used analysable was successfully updated.' }
        format.json { render :show, status: :ok, location: @analytics_used_analysable }
      else
        format.html { render :edit }
        format.json { render json: @analytics_used_analysable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics_used_analysables/1
  # DELETE /analytics_used_analysables/1.json
  def destroy
    @analytics_used_analysable.destroy
    respond_to do |format|
      format.html { redirect_to analytics_used_analysables_url, notice: 'Analytics used analysable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analytics_used_analysable
      @analytics_used_analysable = AnalyticsUsedAnalysable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analytics_used_analysable_params
      params.require(:analytics_used_analysable).permit(:modelid, :action, :analysableid, :timeanalysed)
    end
end
