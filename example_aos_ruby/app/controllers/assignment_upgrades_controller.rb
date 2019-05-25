class AssignmentUpgradesController < ApplicationController
  before_action :set_assignment_upgrade, only: [:show, :edit, :update, :destroy]

  # GET /assignment_upgrades
  # GET /assignment_upgrades.json
  def index
    @assignment_upgrades = AssignmentUpgrade.all
  end

  # GET /assignment_upgrades/1
  # GET /assignment_upgrades/1.json
  def show
  end

  # GET /assignment_upgrades/new
  def new
    @assignment_upgrade = AssignmentUpgrade.new
  end

  # GET /assignment_upgrades/1/edit
  def edit
  end

  # POST /assignment_upgrades
  # POST /assignment_upgrades.json
  def create
    @assignment_upgrade = AssignmentUpgrade.new(assignment_upgrade_params)

    respond_to do |format|
      if @assignment_upgrade.save
        format.html { redirect_to @assignment_upgrade, notice: 'Assignment upgrade was successfully created.' }
        format.json { render :show, status: :created, location: @assignment_upgrade }
      else
        format.html { render :new }
        format.json { render json: @assignment_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignment_upgrades/1
  # PATCH/PUT /assignment_upgrades/1.json
  def update
    respond_to do |format|
      if @assignment_upgrade.update(assignment_upgrade_params)
        format.html { redirect_to @assignment_upgrade, notice: 'Assignment upgrade was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment_upgrade }
      else
        format.html { render :edit }
        format.json { render json: @assignment_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignment_upgrades/1
  # DELETE /assignment_upgrades/1.json
  def destroy
    @assignment_upgrade.destroy
    respond_to do |format|
      format.html { redirect_to assignment_upgrades_url, notice: 'Assignment upgrade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment_upgrade
      @assignment_upgrade = AssignmentUpgrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_upgrade_params
      params.require(:assignment_upgrade).permit(:oldcmid, :oldinstance, :newcmid, :newinstance, :timecreated)
    end
end
