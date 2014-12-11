class AddEmailAndMobileToListings < ActiveRecord::Migration
  def change
    add_column :listings, :email, :string
    add_column :listings, :mobile, :integer
  end
end
