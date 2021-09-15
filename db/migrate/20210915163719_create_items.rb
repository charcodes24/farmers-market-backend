class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_url
      t.integer :price
      t.belongs_to :vendor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
