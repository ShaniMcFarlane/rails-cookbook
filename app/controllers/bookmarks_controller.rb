class BookmarksController < ApplicationController
  # before_action :set_category, only: [ :new, :create, :destroy ]
  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.category = @category
    if @bookmark.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category), status: :see_other
  end

  private

  # def set_category
  #   @category = Category.find(params[:category_id])
  # end

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
