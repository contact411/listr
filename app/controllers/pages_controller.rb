class PagesController < ApplicationController
  def index
    @categories = Category.all
    @listings = Listing.order('id ASC').limit(4)
  end
end
