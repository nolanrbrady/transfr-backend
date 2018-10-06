class CreateCoupons < ActiveRecord::Migration[5.1]
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :code
      t.integer :discount_percentage
      t.integer :discount_amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
