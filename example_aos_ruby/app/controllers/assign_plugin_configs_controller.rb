class AssignPluginConfigsController < ApplicationController
  before_action :set_assign_plugin_config, only: [:show, :edit, :update, :destroy]

  # GET /assign_plugin_configs
  # GET /assign_plugin_configs.json
  def index
    @assign_plugin_configs = AssignPluginConfig.all
  end

  # GET /assign_plugin_configs/1
  # GET /assign_plugin_configs/1.json
  def show
  end

  # GET /assign_plugin_configs/new
  def new
    @assign_plugin_config = AssignPluginConfig.new
  end

  # GET /assign_plugin_configs/1/edit
  def edit
  end

  # POST /assign_plugin_configs
  # POST /assign_plugin_configs.json
  def create
    @assign_plugin_config = AssignPluginConfig.new(assign_plugin_config_params)

    respond_to do |format|
      if @assign_plugin_config.save
        format.html { redirect_to @assign_plugin_config, notice: 'Assign plugin config was successfully created.' }
        format.json { render :show, status: :created, location: @assign_plugin_config }
      else
        format.html { render :new }
        format.json { render json: @assign_plugin_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assign_plugin_configs/1
  # PATCH/PUT /assign_plugin_configs/1.json
  def update
    respond_to do |format|
      if @assign_plugin_config.update(assign_plugin_config_params)
        format.html { redirect_to @assign_plugin_config, notice: 'Assign plugin config was successfully updated.' }
        format.json { render :show, status: :ok, location: @assign_plugin_config }
      else
        format.html { render :edit }
        format.json { render json: @assign_plugin_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assign_plugin_configs/1
  # DELETE /assign_plugin_configs/1.json
  def destroy
    @assign_plugin_config.destroy
    respond_to do |format|
      format.html { redirect_to assign_plugin_configs_url, notice: 'Assign plugin config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assign_plugin_config
      @assign_plugin_config = AssignPluginConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assign_plugin_config_params
      params.require(:assign_plugin_config).permit(:assignment, :plugin, :subtype, :name, :value)
    end
end
