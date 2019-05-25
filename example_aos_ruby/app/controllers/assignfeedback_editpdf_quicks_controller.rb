class AssignfeedbackEditpdfQuicksController < ApplicationController
  before_action :set_assignfeedback_editpdf_quick, only: [:show, :edit, :update, :destroy]

  # GET /assignfeedback_editpdf_quicks
  # GET /assignfeedback_editpdf_quicks.json
  def index
    @assignfeedback_editpdf_quicks = AssignfeedbackEditpdfQuick.all
  end

  # GET /assignfeedback_editpdf_quicks/1
  # GET /assignfeedback_editpdf_quicks/1.json
  def show
  end

  # GET /assignfeedback_editpdf_quicks/new
  def new
    @assignfeedback_editpdf_quick = AssignfeedbackEditpdfQuick.new
  end

  # GET /assignfeedback_editpdf_quicks/1/edit
  def edit
  end

  # POST /assignfeedback_editpdf_quicks
  # POST /assignfeedback_editpdf_quicks.json
  def create
    @assignfeedback_editpdf_quick = AssignfeedbackEditpdfQuick.new(assignfeedback_editpdf_quick_params)

    respond_to do |format|
      if @assignfeedback_editpdf_quick.save
        format.html { redirect_to @assignfeedback_editpdf_quick, notice: 'Assignfeedback editpdf quick was successfully created.' }
        format.json { render :show, status: :created, location: @assignfeedback_editpdf_quick }
      else
        format.html { render :new }
        format.json { render json: @assignfeedback_editpdf_quick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignfeedback_editpdf_quicks/1
  # PATCH/PUT /assignfeedback_editpdf_quicks/1.json
  def update
    respond_to do |format|
      if @assignfeedback_editpdf_quick.update(assignfeedback_editpdf_quick_params)
        format.html { redirect_to @assignfeedback_editpdf_quick, notice: 'Assignfeedback editpdf quick was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignfeedback_editpdf_quick }
      else
        format.html { render :edit }
        format.json { render json: @assignfeedback_editpdf_quick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignfeedback_editpdf_quicks/1
  # DELETE /assignfeedback_editpdf_quicks/1.json
  def destroy
    @assignfeedback_editpdf_quick.destroy
    respond_to do |format|
      format.html { redirect_to assignfeedback_editpdf_quicks_url, notice: 'Assignfeedback editpdf quick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignfeedback_editpdf_quick
      @assignfeedback_editpdf_quick = AssignfeedbackEditpdfQuick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignfeedback_editpdf_quick_params
      params.require(:assignfeedback_editpdf_quick).permit(:userid, :rawtext, :width, :colour)
    end
end
