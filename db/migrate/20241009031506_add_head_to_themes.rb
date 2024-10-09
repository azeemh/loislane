class AddHeadToThemes < ActiveRecord::Migration[7.1]
  def change
    add_column :themes, :customhead, :text
  end
end
