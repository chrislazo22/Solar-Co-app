class CreateModifiers < ActiveRecord::Migration
  def change
    create_table :modifiers do |t|
      t.string :mod_type
      t.decimal :amperage

      t.timestamps null: false
    end
  end
end
