class CreateStories < ActiveRecord::Migration[7.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.text :tags
      t.boolean :factchecked
      t.boolean :proofread
      t.boolean :enableautopublish
      t.datetime :autopublishdate
      t.boolean :publish
      t.datetime :publishdate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :stories, :title, unique: true
    add_index :stories, :slug, unique: true
  end
end
