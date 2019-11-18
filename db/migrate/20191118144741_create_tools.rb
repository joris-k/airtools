class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :long
      t.string :lat
      t.string :date
      t.float :price
      t.string :category
      t.string :sub_category
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
