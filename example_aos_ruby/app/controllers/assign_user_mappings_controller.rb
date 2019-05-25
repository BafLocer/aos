class AssignUserMappingsController < ApplicationController
  before_action :set_assign_user_mapping, only: [:show, :edit, :update, :destroy]

  # GET /assign_user_mappings
  # GET /assign_user_mappings.json
  def index
    @assign_user_mappings = AssignUserMapping.all
  end

  # GET /assign_user_mappings/1
  # GET /assign_user_mappings/1.json
  def show
  end

  # GET /assign_user_mappings/new
  def new
    @assign_user_mapping = AssignUserMapping.new
  end

  # GET /assign_user_mappings/1/edit
  def edit
  end

  # POST /assign_user_mappings
  # POST /assign_user_mappings.json
  def create
    @assign_user_mapping = AssignUserMapping.new(assign_user_mapping_params)

    respond_to do |format|
      if @assign_user_mapping.save
        format.html { redirect_to @assign_user_mapping, notice: 'Assign user mapping was successfully created.' }
        format.json { render :show, status: :created, location: @assign_user_mapping }
      else
        format.html { render :new }
        format.json { render json: @assign_user_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assign_user_mappings/1
  # PATCH/PUT /assign_user_mappings/1.json
  def update
    respond_to do |format|
      if @assign_user_mapping.update(assign_user_mapping_params)
        format.html { redirect_to @assign_user_mapping, notice: 'Assign user mapping was successfully updated.' }
        format.json { render :show, status: :ok, location: @assign_user_mapping }
      else
        format.html { render :edit }
        format.json { render json: @assign_user_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assign_user_mappings/1
  # DELETE /assign_user_mappings/1.json
  def destroy
    @assign_user_mapping.destroy
    respond_to do |format|
      format.html { redirect_to assign_user_mappings_url, notice: 'Assign user mapping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assign_user_mapping
      @assign_user_mapping = AssignUserMapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assign_user_mapping_params
      params.require(:assign_user_mapping).permit(:assignment, :userid)
    end
end
