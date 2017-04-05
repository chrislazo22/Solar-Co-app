class CreateBatts < ActiveRecord::Migration
  def change
    create_table :batts do |t|
      t.string :batt_type
      t.integer :batt_voltage
      t.decimal :batt_ah

      t.timestamps null: false
    end
  end
end
