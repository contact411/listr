class PagesController < ApplicationController
  def index
    @categories = Category.all
    @listings = Listing.reverse_order(:updated_at).limit(3)
  end
end
