class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :product_type
      t.string :product_name

      t.timestamps
    end
  end
end
