class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path(@category)
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
# - For categories, **these are the things a user can do:**
#   1. A user can see all the categories here ⇒ **'/categories'**
#       - Since there are currently no categories in the database, let's create one/two first using the Rails console.
#   2. A user can see the details of a given category and its name here ⇒ **'/categories/42'**
#   3. A user can create a new category here ⇒ **'categories/new'**
#       - We prefer to use Simple Form in our Rails application, so we need to install it first.
#       - go back to the Advanced Routing lecture to add bootstrap to your app
#   4. Create a new category
#   5. A user can delete a category
