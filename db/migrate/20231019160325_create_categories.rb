class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon
      t.decimal :Totalamount, precision: 20, scale: 2
      t.references :user, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
