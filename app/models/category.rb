class Category < ActiveRecord::Base

  has_many :categories_listings
  has_many :listings, through: :categories_listings

end
