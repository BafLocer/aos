class AssignfeedbackEditpdfQueuesController < ApplicationController
  before_action :set_assignfeedback_editpdf_queue, only: [:show, :edit, :update, :destroy]

  # GET /assignfeedback_editpdf_queues
  # GET /assignfeedback_editpdf_queues.json
  def index
    @assignfeedback_editpdf_queues = AssignfeedbackEditpdfQueue.all
  end

  # GET /assignfeedback_editpdf_queues/1
  # GET /assignfeedback_editpdf_queues/1.json
  def show
  end

  # GET /assignfeedback_editpdf_queues/new
  def new
    @assignfeedback_editpdf_queue = AssignfeedbackEditpdfQueue.new
  end

  # GET /assignfeedback_editpdf_queues/1/edit
  def edit
  end

  # POST /assignfeedback_editpdf_queues
  # POST /assignfeedback_editpdf_queues.json
  def create
    @assignfeedback_editpdf_queue = AssignfeedbackEditpdfQueue.new(assignfeedback_editpdf_queue_params)

    respond_to do |format|
      if @assignfeedback_editpdf_queue.save
        format.html { redirect_to @assignfeedback_editpdf_queue, notice: 'Assignfeedback editpdf queue was successfully created.' }
        format.json { render :show, status: :created, location: @assignfeedback_editpdf_queue }
      else
        format.html { render :new }
        format.json { render json: @assignfeedback_editpdf_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignfeedback_editpdf_queues/1
  # PATCH/PUT /assignfeedback_editpdf_queues/1.json
  def update
    respond_to do |format|
      if @assignfeedback_editpdf_queue.update(assignfeedback_editpdf_queue_params)
        format.html { redirect_to @assignfeedback_editpdf_queue, notice: 'Assignfeedback editpdf queue was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignfeedback_editpdf_queue }
      else
        format.html { render :edit }
        format.json { render json: @assignfeedback_editpdf_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignfeedback_editpdf_queues/1
  # DELETE /assignfeedback_editpdf_queues/1.json
  def destroy
    @assignfeedback_editpdf_queue.destroy
    respond_to do |format|
      format.html { redirect_to assignfeedback_editpdf_queues_url, notice: 'Assignfeedback editpdf queue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignfeedback_editpdf_queue
      @assignfeedback_editpdf_queue = AssignfeedbackEditpdfQueue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignfeedback_editpdf_queue_params
      params.require(:assignfeedback_editpdf_queue).permit(:submissionid, :submissionattempt)
    end
end
