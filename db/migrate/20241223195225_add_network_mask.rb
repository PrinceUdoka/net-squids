class AddNetworkMask < ActiveRecord::Migration[8.0]
  def change
    add_column :networks, :mask, :integer, null: false
  end
end
