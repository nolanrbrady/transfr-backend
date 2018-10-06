class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.json :meta_tags
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
