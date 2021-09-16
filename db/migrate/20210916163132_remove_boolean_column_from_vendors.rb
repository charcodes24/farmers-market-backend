class RemoveBooleanColumnFromVendors < ActiveRecord::Migration[6.1]
  def change
    remove_column :vendors, :boolean
  end
end
