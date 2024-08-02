class CreateThemes < ActiveRecord::Migration[7.1]
  def change
    create_table :themes do |t|
      t.string :name
      t.string :backgroundcolor
      t.string :headingcolor
      t.string :textcolor
      t.string :primarycolor
      t.string :secondarycolor
      t.string :tertiarycolor
      t.string :quaternarycolor
      t.string :maxwidth
      t.text :customcss

      t.timestamps
    end
    add_index :themes, :name, unique: true
  end
end
