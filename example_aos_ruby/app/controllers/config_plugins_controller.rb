class ConfigPluginsController < ApplicationController
  before_action :set_config_plugin, only: [:show, :edit, :update, :destroy]

  # GET /config_plugins
  # GET /config_plugins.json
  def index
    @config_plugins = ConfigPlugin.all
  end

  # GET /config_plugins/1
  # GET /config_plugins/1.json
  def show
  end

  # GET /config_plugins/new
  def new
    @config_plugin = ConfigPlugin.new
  end

  # GET /config_plugins/1/edit
  def edit
  end

  # POST /config_plugins
  # POST /config_plugins.json
  def create
    @config_plugin = ConfigPlugin.new(config_plugin_params)

    respond_to do |format|
      if @config_plugin.save
        format.html { redirect_to @config_plugin, notice: 'Config plugin was successfully created.' }
        format.json { render :show, status: :created, location: @config_plugin }
      else
        format.html { render :new }
        format.json { render json: @config_plugin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /config_plugins/1
  # PATCH/PUT /config_plugins/1.json
  def update
    respond_to do |format|
      if @config_plugin.update(config_plugin_params)
        format.html { redirect_to @config_plugin, notice: 'Config plugin was successfully updated.' }
        format.json { render :show, status: :ok, location: @config_plugin }
      else
        format.html { render :edit }
        format.json { render json: @config_plugin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /config_plugins/1
  # DELETE /config_plugins/1.json
  def destroy
    @config_plugin.destroy
    respond_to do |format|
      format.html { redirect_to config_plugins_url, notice: 'Config plugin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_config_plugin
      @config_plugin = ConfigPlugin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def config_plugin_params
      params.require(:config_plugin).permit(:plugin, :name, :value)
    end
end
