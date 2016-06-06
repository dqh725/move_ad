class AddAddressToAdHolder < ActiveRecord::Migration
  def change
    add_column :ad_holders, :address, :string
    add_column :ad_holders, :latitude, :float
    add_column :ad_holders, :longitude, :float
  end
end
