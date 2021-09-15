class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.string :is_vendor
      t.string :boolean
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
