class UpdateCategoryFields < ActiveRecord::Migration[7.1]
  def change
    change_column :categories, :description, :text
  end
end
