class AssignfeedbackEditpdfAnnotsController < ApplicationController
  before_action :set_assignfeedback_editpdf_annot, only: [:show, :edit, :update, :destroy]

  # GET /assignfeedback_editpdf_annots
  # GET /assignfeedback_editpdf_annots.json
  def index
    @assignfeedback_editpdf_annots = AssignfeedbackEditpdfAnnot.all
  end

  # GET /assignfeedback_editpdf_annots/1
  # GET /assignfeedback_editpdf_annots/1.json
  def show
  end

  # GET /assignfeedback_editpdf_annots/new
  def new
    @assignfeedback_editpdf_annot = AssignfeedbackEditpdfAnnot.new
  end

  # GET /assignfeedback_editpdf_annots/1/edit
  def edit
  end

  # POST /assignfeedback_editpdf_annots
  # POST /assignfeedback_editpdf_annots.json
  def create
    @assignfeedback_editpdf_annot = AssignfeedbackEditpdfAnnot.new(assignfeedback_editpdf_annot_params)

    respond_to do |format|
      if @assignfeedback_editpdf_annot.save
        format.html { redirect_to @assignfeedback_editpdf_annot, notice: 'Assignfeedback editpdf annot was successfully created.' }
        format.json { render :show, status: :created, location: @assignfeedback_editpdf_annot }
      else
        format.html { render :new }
        format.json { render json: @assignfeedback_editpdf_annot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignfeedback_editpdf_annots/1
  # PATCH/PUT /assignfeedback_editpdf_annots/1.json
  def update
    respond_to do |format|
      if @assignfeedback_editpdf_annot.update(assignfeedback_editpdf_annot_params)
        format.html { redirect_to @assignfeedback_editpdf_annot, notice: 'Assignfeedback editpdf annot was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignfeedback_editpdf_annot }
      else
        format.html { render :edit }
        format.json { render json: @assignfeedback_editpdf_annot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignfeedback_editpdf_annots/1
  # DELETE /assignfeedback_editpdf_annots/1.json
  def destroy
    @assignfeedback_editpdf_annot.destroy
    respond_to do |format|
      format.html { redirect_to assignfeedback_editpdf_annots_url, notice: 'Assignfeedback editpdf annot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignfeedback_editpdf_annot
      @assignfeedback_editpdf_annot = AssignfeedbackEditpdfAnnot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignfeedback_editpdf_annot_params
      params.require(:assignfeedback_editpdf_annot).permit(:gradeid, :pageno, :x, :y, :endx, :endy, :path, :type, :colour, :draft)
    end
end
