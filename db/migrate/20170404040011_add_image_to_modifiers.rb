class AddImageToModifiers < ActiveRecord::Migration
  def change
    add_column :modifiers, :image, :string
  end
end
