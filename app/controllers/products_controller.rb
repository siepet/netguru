class ProductsController < ApplicationController
  before_action :require_login, only: [:new, :create, :update, :destroy]
  before_action :author, only: [:edit, :update]
  expose(:category)
  expose(:products)
  expose(:product)
  expose(:review) { Review.new }
  expose_decorated(:reviews, ancestor: :product)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    self.product = Product.new(product_params)
    self.product.user = current_user

    if product.save
      category.products << product
      redirect_to category_product_url(category, product), notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if self.product.update(product_params)
      redirect_to category_product_url(category, product), notice: 'Product was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /products/1
  def destroy
    product.destroy
    redirect_to category_url(product.category), notice: 'Product was successfully destroyed.'
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id)
  end

  def require_login
    if !user_signed_in?
      redirect_to new_user_session_path
    end
  end

  def author
    if !(self.product.user == current_user)
      flash[:error] = "You are not allowed to edit this product."
      redirect_to category_product_url(category, product)
    end
  end
end
