class CacheFiltersController < ApplicationController
  before_action :set_cache_filter, only: [:show, :edit, :update, :destroy]

  # GET /cache_filters
  # GET /cache_filters.json
  def index
    @cache_filters = CacheFilter.all
  end

  # GET /cache_filters/1
  # GET /cache_filters/1.json
  def show
  end

  # GET /cache_filters/new
  def new
    @cache_filter = CacheFilter.new
  end

  # GET /cache_filters/1/edit
  def edit
  end

  # POST /cache_filters
  # POST /cache_filters.json
  def create
    @cache_filter = CacheFilter.new(cache_filter_params)

    respond_to do |format|
      if @cache_filter.save
        format.html { redirect_to @cache_filter, notice: 'Cache filter was successfully created.' }
        format.json { render :show, status: :created, location: @cache_filter }
      else
        format.html { render :new }
        format.json { render json: @cache_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cache_filters/1
  # PATCH/PUT /cache_filters/1.json
  def update
    respond_to do |format|
      if @cache_filter.update(cache_filter_params)
        format.html { redirect_to @cache_filter, notice: 'Cache filter was successfully updated.' }
        format.json { render :show, status: :ok, location: @cache_filter }
      else
        format.html { render :edit }
        format.json { render json: @cache_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cache_filters/1
  # DELETE /cache_filters/1.json
  def destroy
    @cache_filter.destroy
    respond_to do |format|
      format.html { redirect_to cache_filters_url, notice: 'Cache filter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cache_filter
      @cache_filter = CacheFilter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cache_filter_params
      params.require(:cache_filter).permit(:filter, :version, :md5key, :rawtext, :timemodified)
    end
end
