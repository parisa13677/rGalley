# frozen_string_literal: true

# this is a CategoriesController
class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Category Created"

      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
  end

private

  def category_params
    params.require(:category).permit(:name)
  end
end
