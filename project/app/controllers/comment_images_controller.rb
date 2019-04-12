class CommentImagesController < ApplicationController
  before_action :set_comment_image, only: [:show, :edit, :update, :destroy]

  # GET /comment_images
  # GET /comment_images.json
  def index
    @comment_images = CommentImage.all
  end

  # GET /comment_images/1
  # GET /comment_images/1.json
  def show
  end

  # GET /comment_images/new
  def new
    @comment_image = CommentImage.new
  end

  # GET /comment_images/1/edit
  def edit
  end

  # POST /comment_images
  # POST /comment_images.json
  def create
    @comment_image = CommentImage.new(comment_image_params)

    respond_to do |format|
      if @comment_image.save
        format.html { redirect_to @comment_image, notice: 'Comment image was successfully created.' }
        format.json { render :show, status: :created, location: @comment_image }
      else
        format.html { render :new }
        format.json { render json: @comment_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_images/1
  # PATCH/PUT /comment_images/1.json
  def update
    respond_to do |format|
      if @comment_image.update(comment_image_params)
        format.html { redirect_to @comment_image, notice: 'Comment image was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_image }
      else
        format.html { render :edit }
        format.json { render json: @comment_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_images/1
  # DELETE /comment_images/1.json
  def destroy
    @comment_image.destroy
    respond_to do |format|
      format.html { redirect_to comment_images_url, notice: 'Comment image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_image
      @comment_image = CommentImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_image_params
      params.require(:comment_image).permit(:link, :comment_id)
    end
end
