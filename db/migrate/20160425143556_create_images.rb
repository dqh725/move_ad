class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :file
      t.integer :holder_id
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
