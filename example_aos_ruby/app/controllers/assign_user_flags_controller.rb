class AssignUserFlagsController < ApplicationController
  before_action :set_assign_user_flag, only: [:show, :edit, :update, :destroy]

  # GET /assign_user_flags
  # GET /assign_user_flags.json
  def index
    @assign_user_flags = AssignUserFlag.all
  end

  # GET /assign_user_flags/1
  # GET /assign_user_flags/1.json
  def show
  end

  # GET /assign_user_flags/new
  def new
    @assign_user_flag = AssignUserFlag.new
  end

  # GET /assign_user_flags/1/edit
  def edit
  end

  # POST /assign_user_flags
  # POST /assign_user_flags.json
  def create
    @assign_user_flag = AssignUserFlag.new(assign_user_flag_params)

    respond_to do |format|
      if @assign_user_flag.save
        format.html { redirect_to @assign_user_flag, notice: 'Assign user flag was successfully created.' }
        format.json { render :show, status: :created, location: @assign_user_flag }
      else
        format.html { render :new }
        format.json { render json: @assign_user_flag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assign_user_flags/1
  # PATCH/PUT /assign_user_flags/1.json
  def update
    respond_to do |format|
      if @assign_user_flag.update(assign_user_flag_params)
        format.html { redirect_to @assign_user_flag, notice: 'Assign user flag was successfully updated.' }
        format.json { render :show, status: :ok, location: @assign_user_flag }
      else
        format.html { render :edit }
        format.json { render json: @assign_user_flag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assign_user_flags/1
  # DELETE /assign_user_flags/1.json
  def destroy
    @assign_user_flag.destroy
    respond_to do |format|
      format.html { redirect_to assign_user_flags_url, notice: 'Assign user flag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assign_user_flag
      @assign_user_flag = AssignUserFlag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assign_user_flag_params
      params.require(:assign_user_flag).permit(:userid, :assignment, :locked, :mailed, :extensionduedate, :workflowstate, :allocatedmarker)
    end
end
