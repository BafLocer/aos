class AnalyticsUsedFilesController < ApplicationController
  before_action :set_analytics_used_file, only: [:show, :edit, :update, :destroy]

  # GET /analytics_used_files
  # GET /analytics_used_files.json
  def index
    @analytics_used_files = AnalyticsUsedFile.all
  end

  # GET /analytics_used_files/1
  # GET /analytics_used_files/1.json
  def show
  end

  # GET /analytics_used_files/new
  def new
    @analytics_used_file = AnalyticsUsedFile.new
  end

  # GET /analytics_used_files/1/edit
  def edit
  end

  # POST /analytics_used_files
  # POST /analytics_used_files.json
  def create
    @analytics_used_file = AnalyticsUsedFile.new(analytics_used_file_params)

    respond_to do |format|
      if @analytics_used_file.save
        format.html { redirect_to @analytics_used_file, notice: 'Analytics used file was successfully created.' }
        format.json { render :show, status: :created, location: @analytics_used_file }
      else
        format.html { render :new }
        format.json { render json: @analytics_used_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytics_used_files/1
  # PATCH/PUT /analytics_used_files/1.json
  def update
    respond_to do |format|
      if @analytics_used_file.update(analytics_used_file_params)
        format.html { redirect_to @analytics_used_file, notice: 'Analytics used file was successfully updated.' }
        format.json { render :show, status: :ok, location: @analytics_used_file }
      else
        format.html { render :edit }
        format.json { render json: @analytics_used_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics_used_files/1
  # DELETE /analytics_used_files/1.json
  def destroy
    @analytics_used_file.destroy
    respond_to do |format|
      format.html { redirect_to analytics_used_files_url, notice: 'Analytics used file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analytics_used_file
      @analytics_used_file = AnalyticsUsedFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analytics_used_file_params
      params.require(:analytics_used_file).permit(:modelid, :fileid, :action, :time)
    end
end
