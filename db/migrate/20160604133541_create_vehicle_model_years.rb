class CreateVehicleModelYears < ActiveRecord::Migration
  def change
    create_table :vehicle_model_years do |t|
      t.integer :year
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
