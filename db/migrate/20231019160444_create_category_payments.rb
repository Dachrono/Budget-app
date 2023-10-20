class CreateCategoryPayments < ActiveRecord::Migration[7.1]
  def change
    create_table :category_payments do |t|
      t.references :category, null: false, foreign_key: { to_table: :categories }
      t.references :payment, null: false, foreign_key: { to_table: :payments }

      t.timestamps
    end
  end  
end
