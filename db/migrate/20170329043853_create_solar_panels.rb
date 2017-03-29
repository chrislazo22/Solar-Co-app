class CreateSolarPanels < ActiveRecord::Migration
  def change
    create_table :solar_panels do |t|
      t.string :cell_type
      t.decimal :wattage
      t.decimal :voltage
      t.string :image

      t.timestamps null: false
    end
  end
end
