class ImagesController < ApplicationController
  def index
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
  end

  private

  def image_params
    params.require(:image).permit(:image, :category_id, :image_title,
      :image_descrip, :image_file_size, :image_content_type, :remote_image_url)
  end
end
