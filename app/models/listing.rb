class Listing < ActiveRecord::Base

  belongs_to :user

  has_many :attachments
  has_many :categories_listings
  has_many :categories, through: :categories_listings

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end