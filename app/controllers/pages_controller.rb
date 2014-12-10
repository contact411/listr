class PagesController < ApplicationController
  def index
    @categories = Category.all
    @listings = Listing.all
  end
end
