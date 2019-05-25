class AssignfeedbackEditpdfCmntsController < ApplicationController
  before_action :set_assignfeedback_editpdf_cmnt, only: [:show, :edit, :update, :destroy]

  # GET /assignfeedback_editpdf_cmnts
  # GET /assignfeedback_editpdf_cmnts.json
  def index
    @assignfeedback_editpdf_cmnts = AssignfeedbackEditpdfCmnt.all
  end

  # GET /assignfeedback_editpdf_cmnts/1
  # GET /assignfeedback_editpdf_cmnts/1.json
  def show
  end

  # GET /assignfeedback_editpdf_cmnts/new
  def new
    @assignfeedback_editpdf_cmnt = AssignfeedbackEditpdfCmnt.new
  end

  # GET /assignfeedback_editpdf_cmnts/1/edit
  def edit
  end

  # POST /assignfeedback_editpdf_cmnts
  # POST /assignfeedback_editpdf_cmnts.json
  def create
    @assignfeedback_editpdf_cmnt = AssignfeedbackEditpdfCmnt.new(assignfeedback_editpdf_cmnt_params)

    respond_to do |format|
      if @assignfeedback_editpdf_cmnt.save
        format.html { redirect_to @assignfeedback_editpdf_cmnt, notice: 'Assignfeedback editpdf cmnt was successfully created.' }
        format.json { render :show, status: :created, location: @assignfeedback_editpdf_cmnt }
      else
        format.html { render :new }
        format.json { render json: @assignfeedback_editpdf_cmnt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignfeedback_editpdf_cmnts/1
  # PATCH/PUT /assignfeedback_editpdf_cmnts/1.json
  def update
    respond_to do |format|
      if @assignfeedback_editpdf_cmnt.update(assignfeedback_editpdf_cmnt_params)
        format.html { redirect_to @assignfeedback_editpdf_cmnt, notice: 'Assignfeedback editpdf cmnt was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignfeedback_editpdf_cmnt }
      else
        format.html { render :edit }
        format.json { render json: @assignfeedback_editpdf_cmnt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignfeedback_editpdf_cmnts/1
  # DELETE /assignfeedback_editpdf_cmnts/1.json
  def destroy
    @assignfeedback_editpdf_cmnt.destroy
    respond_to do |format|
      format.html { redirect_to assignfeedback_editpdf_cmnts_url, notice: 'Assignfeedback editpdf cmnt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignfeedback_editpdf_cmnt
      @assignfeedback_editpdf_cmnt = AssignfeedbackEditpdfCmnt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignfeedback_editpdf_cmnt_params
      params.require(:assignfeedback_editpdf_cmnt).permit(:gradeid, :x, :y, :width, :rawtext, :pageno, :colour, :draft)
    end
end
