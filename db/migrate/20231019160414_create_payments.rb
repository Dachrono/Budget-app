class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.string :name
      t.decimal :amount, precision: 8, scale: 1
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end 
end
