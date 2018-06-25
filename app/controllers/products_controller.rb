class ProductsController < RankingController
  before_action :authenticate_user!, only: :search

  def index
    @products = Product.order('id ASC').limit(20)
  end

  def show
    @product = Product.where(params[:id])
  end


def search
  keyword = "%#{params[:keyword]}%"
  @products = Product.find_by_sql(["select * from products where title like ? LIMIT 20", keyword])
end

end
