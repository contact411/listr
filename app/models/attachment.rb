class Attachment < ActiveRecord::Base

  belongs_to :listing

  has_attached_file :image, :styles => { :medium => "750x500>", :small => "200x200", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
