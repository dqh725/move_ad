class AddCarTypeToHolder < ActiveRecord::Migration
  def change
    add_column :ad_holders, :car_id, :integer
  end
end
