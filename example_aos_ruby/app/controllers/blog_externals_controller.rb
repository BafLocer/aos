class BlogExternalsController < ApplicationController
  before_action :set_blog_external, only: [:show, :edit, :update, :destroy]

  # GET /blog_externals
  # GET /blog_externals.json
  def index
    @blog_externals = BlogExternal.all
  end

  # GET /blog_externals/1
  # GET /blog_externals/1.json
  def show
  end

  # GET /blog_externals/new
  def new
    @blog_external = BlogExternal.new
  end

  # GET /blog_externals/1/edit
  def edit
  end

  # POST /blog_externals
  # POST /blog_externals.json
  def create
    @blog_external = BlogExternal.new(blog_external_params)

    respond_to do |format|
      if @blog_external.save
        format.html { redirect_to @blog_external, notice: 'Blog external was successfully created.' }
        format.json { render :show, status: :created, location: @blog_external }
      else
        format.html { render :new }
        format.json { render json: @blog_external.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_externals/1
  # PATCH/PUT /blog_externals/1.json
  def update
    respond_to do |format|
      if @blog_external.update(blog_external_params)
        format.html { redirect_to @blog_external, notice: 'Blog external was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_external }
      else
        format.html { render :edit }
        format.json { render json: @blog_external.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_externals/1
  # DELETE /blog_externals/1.json
  def destroy
    @blog_external.destroy
    respond_to do |format|
      format.html { redirect_to blog_externals_url, notice: 'Blog external was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_external
      @blog_external = BlogExternal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_external_params
      params.require(:blog_external).permit(:userid, :name, :description, :url, :filtertags, :failedlastsync, :timemodified, :timefetched)
    end
end
