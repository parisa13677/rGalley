# frozen_string_literal: true

# this is a ImagesController
class ImagesController < ApplicationController
  def index
    @images = Image.all
    @categories = Category.all
  end

  def new
    @image = Image.all
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      flash[:notice] = 'Image Created'

      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    flash[:notice]='image deleted'

    redirect_to images_path
  end

  private

  def image_params
    params.require(:image).permit(:image, :category_id, :image_title,
      :image_descrip, :image_file_size, :image_content_type, :remote_image_url)
  end
end
