class EditorAttoAutosavesController < ApplicationController
  before_action :set_editor_atto_autosafe, only: [:show, :edit, :update, :destroy]

  # GET /editor_atto_autosaves
  # GET /editor_atto_autosaves.json
  def index
    @editor_atto_autosaves = EditorAttoAutosave.all
  end

  # GET /editor_atto_autosaves/1
  # GET /editor_atto_autosaves/1.json
  def show
  end

  # GET /editor_atto_autosaves/new
  def new
    @editor_atto_autosafe = EditorAttoAutosave.new
  end

  # GET /editor_atto_autosaves/1/edit
  def edit
  end

  # POST /editor_atto_autosaves
  # POST /editor_atto_autosaves.json
  def create
    @editor_atto_autosafe = EditorAttoAutosave.new(editor_atto_autosafe_params)

    respond_to do |format|
      if @editor_atto_autosafe.save
        format.html { redirect_to @editor_atto_autosafe, notice: 'Editor atto autosave was successfully created.' }
        format.json { render :show, status: :created, location: @editor_atto_autosafe }
      else
        format.html { render :new }
        format.json { render json: @editor_atto_autosafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /editor_atto_autosaves/1
  # PATCH/PUT /editor_atto_autosaves/1.json
  def update
    respond_to do |format|
      if @editor_atto_autosafe.update(editor_atto_autosafe_params)
        format.html { redirect_to @editor_atto_autosafe, notice: 'Editor atto autosave was successfully updated.' }
        format.json { render :show, status: :ok, location: @editor_atto_autosafe }
      else
        format.html { render :edit }
        format.json { render json: @editor_atto_autosafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /editor_atto_autosaves/1
  # DELETE /editor_atto_autosaves/1.json
  def destroy
    @editor_atto_autosafe.destroy
    respond_to do |format|
      format.html { redirect_to editor_atto_autosaves_url, notice: 'Editor atto autosave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_editor_atto_autosafe
      @editor_atto_autosafe = EditorAttoAutosave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def editor_atto_autosafe_params
      params.require(:editor_atto_autosafe).permit(:elementid, :contextid, :pagehash, :userid, :drafttext, :draftid, :pageinstance, :timemodified)
    end
end
