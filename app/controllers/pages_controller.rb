class PagesController < ApplicationController
  def index
    @categories = Category.all
    @listings = Listing.all.order(:updated_at).reverse_order.limit(3)
  end
end
