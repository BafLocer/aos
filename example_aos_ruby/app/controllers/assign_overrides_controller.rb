class AssignOverridesController < ApplicationController
  before_action :set_assign_override, only: [:show, :edit, :update, :destroy]

  # GET /assign_overrides
  # GET /assign_overrides.json
  def index
    @assign_overrides = AssignOverride.all
  end

  # GET /assign_overrides/1
  # GET /assign_overrides/1.json
  def show
  end

  # GET /assign_overrides/new
  def new
    @assign_override = AssignOverride.new
  end

  # GET /assign_overrides/1/edit
  def edit
  end

  # POST /assign_overrides
  # POST /assign_overrides.json
  def create
    @assign_override = AssignOverride.new(assign_override_params)

    respond_to do |format|
      if @assign_override.save
        format.html { redirect_to @assign_override, notice: 'Assign override was successfully created.' }
        format.json { render :show, status: :created, location: @assign_override }
      else
        format.html { render :new }
        format.json { render json: @assign_override.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assign_overrides/1
  # PATCH/PUT /assign_overrides/1.json
  def update
    respond_to do |format|
      if @assign_override.update(assign_override_params)
        format.html { redirect_to @assign_override, notice: 'Assign override was successfully updated.' }
        format.json { render :show, status: :ok, location: @assign_override }
      else
        format.html { render :edit }
        format.json { render json: @assign_override.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assign_overrides/1
  # DELETE /assign_overrides/1.json
  def destroy
    @assign_override.destroy
    respond_to do |format|
      format.html { redirect_to assign_overrides_url, notice: 'Assign override was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assign_override
      @assign_override = AssignOverride.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assign_override_params
      params.require(:assign_override).permit(:assignid, :groupid, :userid, :sortorder, :allowsubmissionsfromdate, :duedate, :cutoffdate)
    end
end
