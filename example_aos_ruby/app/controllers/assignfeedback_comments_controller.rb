class AssignfeedbackCommentsController < ApplicationController
  before_action :set_assignfeedback_comment, only: [:show, :edit, :update, :destroy]

  # GET /assignfeedback_comments
  # GET /assignfeedback_comments.json
  def index
    @assignfeedback_comments = AssignfeedbackComment.all
  end

  # GET /assignfeedback_comments/1
  # GET /assignfeedback_comments/1.json
  def show
  end

  # GET /assignfeedback_comments/new
  def new
    @assignfeedback_comment = AssignfeedbackComment.new
  end

  # GET /assignfeedback_comments/1/edit
  def edit
  end

  # POST /assignfeedback_comments
  # POST /assignfeedback_comments.json
  def create
    @assignfeedback_comment = AssignfeedbackComment.new(assignfeedback_comment_params)

    respond_to do |format|
      if @assignfeedback_comment.save
        format.html { redirect_to @assignfeedback_comment, notice: 'Assignfeedback comment was successfully created.' }
        format.json { render :show, status: :created, location: @assignfeedback_comment }
      else
        format.html { render :new }
        format.json { render json: @assignfeedback_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignfeedback_comments/1
  # PATCH/PUT /assignfeedback_comments/1.json
  def update
    respond_to do |format|
      if @assignfeedback_comment.update(assignfeedback_comment_params)
        format.html { redirect_to @assignfeedback_comment, notice: 'Assignfeedback comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignfeedback_comment }
      else
        format.html { render :edit }
        format.json { render json: @assignfeedback_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignfeedback_comments/1
  # DELETE /assignfeedback_comments/1.json
  def destroy
    @assignfeedback_comment.destroy
    respond_to do |format|
      format.html { redirect_to assignfeedback_comments_url, notice: 'Assignfeedback comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignfeedback_comment
      @assignfeedback_comment = AssignfeedbackComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignfeedback_comment_params
      params.require(:assignfeedback_comment).permit(:assignment, :grade, :commenttext, :commentformat)
    end
end
