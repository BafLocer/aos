class AssignfeedbackFilesController < ApplicationController
  before_action :set_assignfeedback_file, only: [:show, :edit, :update, :destroy]

  # GET /assignfeedback_files
  # GET /assignfeedback_files.json
  def index
    @assignfeedback_files = AssignfeedbackFile.all
  end

  # GET /assignfeedback_files/1
  # GET /assignfeedback_files/1.json
  def show
  end

  # GET /assignfeedback_files/new
  def new
    @assignfeedback_file = AssignfeedbackFile.new
  end

  # GET /assignfeedback_files/1/edit
  def edit
  end

  # POST /assignfeedback_files
  # POST /assignfeedback_files.json
  def create
    @assignfeedback_file = AssignfeedbackFile.new(assignfeedback_file_params)

    respond_to do |format|
      if @assignfeedback_file.save
        format.html { redirect_to @assignfeedback_file, notice: 'Assignfeedback file was successfully created.' }
        format.json { render :show, status: :created, location: @assignfeedback_file }
      else
        format.html { render :new }
        format.json { render json: @assignfeedback_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignfeedback_files/1
  # PATCH/PUT /assignfeedback_files/1.json
  def update
    respond_to do |format|
      if @assignfeedback_file.update(assignfeedback_file_params)
        format.html { redirect_to @assignfeedback_file, notice: 'Assignfeedback file was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignfeedback_file }
      else
        format.html { render :edit }
        format.json { render json: @assignfeedback_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignfeedback_files/1
  # DELETE /assignfeedback_files/1.json
  def destroy
    @assignfeedback_file.destroy
    respond_to do |format|
      format.html { redirect_to assignfeedback_files_url, notice: 'Assignfeedback file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignfeedback_file
      @assignfeedback_file = AssignfeedbackFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignfeedback_file_params
      params.require(:assignfeedback_file).permit(:assignment, :grade, :numfiles)
    end
end
