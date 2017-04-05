class AddImageToBatts < ActiveRecord::Migration
  def change
    add_column :batts, :image, :string
  end
end
