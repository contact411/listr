class PagesController < ApplicationController
  def index
    @categories = Category.all
    @listings = Listing.order(:updated_at).limit(4)
  end
end
