class ChangeIsVendorToBeBooleanInVendors < ActiveRecord::Migration[6.1]
  def change
    change_column :vendors, :is_vendor, 'boolean USING CAST(is_vendor AS boolean)'
  end
end
