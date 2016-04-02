class CreateAdHolders < ActiveRecord::Migration
  def change
    create_table :ad_holders do |t|
      t.string :type
      t.string :description
      t.float :price
      t.boolean :available

      t.timestamps
    end
  end
end
