class ChangeSubCategoryToBrand < ActiveRecord::Migration[5.2]
  def change
    rename_column :tools, :sub_category, :brand
  end
end
