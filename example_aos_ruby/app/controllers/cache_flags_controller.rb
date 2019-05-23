class CacheFlagsController < ApplicationController
  before_action :set_cache_flag, only: [:show, :edit, :update, :destroy]

  # GET /cache_flags
  # GET /cache_flags.json
  def index
    @cache_flags = CacheFlag.all
  end

  # GET /cache_flags/1
  # GET /cache_flags/1.json
  def show
  end

  # GET /cache_flags/new
  def new
    @cache_flag = CacheFlag.new
  end

  # GET /cache_flags/1/edit
  def edit
  end

  # POST /cache_flags
  # POST /cache_flags.json
  def create
    @cache_flag = CacheFlag.new(cache_flag_params)

    respond_to do |format|
      if @cache_flag.save
        format.html { redirect_to @cache_flag, notice: 'Cache flag was successfully created.' }
        format.json { render :show, status: :created, location: @cache_flag }
      else
        format.html { render :new }
        format.json { render json: @cache_flag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cache_flags/1
  # PATCH/PUT /cache_flags/1.json
  def update
    respond_to do |format|
      if @cache_flag.update(cache_flag_params)
        format.html { redirect_to @cache_flag, notice: 'Cache flag was successfully updated.' }
        format.json { render :show, status: :ok, location: @cache_flag }
      else
        format.html { render :edit }
        format.json { render json: @cache_flag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cache_flags/1
  # DELETE /cache_flags/1.json
  def destroy
    @cache_flag.destroy
    respond_to do |format|
      format.html { redirect_to cache_flags_url, notice: 'Cache flag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cache_flag
      @cache_flag = CacheFlag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cache_flag_params
      params.require(:cache_flag).permit(:flagtype, :name, :timemodified, :value, :expiry)
    end
end
