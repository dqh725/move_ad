class FixColumnName < ActiveRecord::Migration
  def change
  	 rename_column :ad_holders, :type, :holder_type
  end
end
