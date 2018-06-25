class Product < ActiveRecord::Base
  has_many :reviews

  def review_average
    reviews.average(:user_id).round
  end


end
