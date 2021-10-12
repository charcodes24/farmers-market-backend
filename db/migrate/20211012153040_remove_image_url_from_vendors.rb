class RemoveImageUrlFromVendors < ActiveRecord::Migration[6.1]
  def change
    remove_column :vendors, :image_url, :string
  end
end
