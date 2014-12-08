class Listing < ActiveRecord::Base

  belongs_to :user

  has_many :attachments
  has_many :categories_listings
  has_many :categories, through: :categories_listings

end