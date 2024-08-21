class CreateJournalists < ActiveRecord::Migration[7.1]
  def change
    create_table :journalists do |t|
      t.string :name
      t.text :bio
      t.boolean :is_editor
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
