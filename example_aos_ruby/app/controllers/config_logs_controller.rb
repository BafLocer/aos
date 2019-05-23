class ConfigLogsController < ApplicationController
  before_action :set_config_log, only: [:show, :edit, :update, :destroy]

  # GET /config_logs
  # GET /config_logs.json
  def index
    @config_logs = ConfigLog.all
  end

  # GET /config_logs/1
  # GET /config_logs/1.json
  def show
  end

  # GET /config_logs/new
  def new
    @config_log = ConfigLog.new
  end

  # GET /config_logs/1/edit
  def edit
  end

  # POST /config_logs
  # POST /config_logs.json
  def create
    @config_log = ConfigLog.new(config_log_params)

    respond_to do |format|
      if @config_log.save
        format.html { redirect_to @config_log, notice: 'Config log was successfully created.' }
        format.json { render :show, status: :created, location: @config_log }
      else
        format.html { render :new }
        format.json { render json: @config_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /config_logs/1
  # PATCH/PUT /config_logs/1.json
  def update
    respond_to do |format|
      if @config_log.update(config_log_params)
        format.html { redirect_to @config_log, notice: 'Config log was successfully updated.' }
        format.json { render :show, status: :ok, location: @config_log }
      else
        format.html { render :edit }
        format.json { render json: @config_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /config_logs/1
  # DELETE /config_logs/1.json
  def destroy
    @config_log.destroy
    respond_to do |format|
      format.html { redirect_to config_logs_url, notice: 'Config log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_config_log
      @config_log = ConfigLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def config_log_params
      params.require(:config_log).permit(:userid, :timemodified, :plugin, :name, :value, :oldvalue)
    end
end
