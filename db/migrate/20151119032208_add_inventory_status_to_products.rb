class AddInventoryStatusToProducts < ActiveRecord::Migration
  def change
    add_column :products, :inventory_status, :boolean
  end
end
