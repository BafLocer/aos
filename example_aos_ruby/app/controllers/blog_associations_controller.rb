class BlogAssociationsController < ApplicationController
  before_action :set_blog_association, only: [:show, :edit, :update, :destroy]

  # GET /blog_associations
  # GET /blog_associations.json
  def index
    @blog_associations = BlogAssociation.all
  end

  # GET /blog_associations/1
  # GET /blog_associations/1.json
  def show
  end

  # GET /blog_associations/new
  def new
    @blog_association = BlogAssociation.new
  end

  # GET /blog_associations/1/edit
  def edit
  end

  # POST /blog_associations
  # POST /blog_associations.json
  def create
    @blog_association = BlogAssociation.new(blog_association_params)

    respond_to do |format|
      if @blog_association.save
        format.html { redirect_to @blog_association, notice: 'Blog association was successfully created.' }
        format.json { render :show, status: :created, location: @blog_association }
      else
        format.html { render :new }
        format.json { render json: @blog_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_associations/1
  # PATCH/PUT /blog_associations/1.json
  def update
    respond_to do |format|
      if @blog_association.update(blog_association_params)
        format.html { redirect_to @blog_association, notice: 'Blog association was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_association }
      else
        format.html { render :edit }
        format.json { render json: @blog_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_associations/1
  # DELETE /blog_associations/1.json
  def destroy
    @blog_association.destroy
    respond_to do |format|
      format.html { redirect_to blog_associations_url, notice: 'Blog association was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_association
      @blog_association = BlogAssociation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_association_params
      params.require(:blog_association).permit(:contextid, :blogid)
    end
end
