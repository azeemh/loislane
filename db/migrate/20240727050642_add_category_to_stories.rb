class AddCategoryToStories < ActiveRecord::Migration[7.1]
  def change
    add_reference :stories, :category, null: false, foreign_key: true
  end
end
