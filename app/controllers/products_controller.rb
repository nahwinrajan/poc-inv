class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @q = Product.search(params[:q])
    @products = @q.result(distinct: true).paginate(:page => params[:page], :per_page => 20)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:success] = 'Product was successfully created.'
      redirect_to @product
    else
      render 'new'
    end
  end

  def update
    if @product.update(product_params)
      flash[:success] = 'Product was successfully updated.'
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    flash[:success] = 'Product was successfully removed.'
    redirect_to products_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :quantity, :price, :image_url)
    end
end
