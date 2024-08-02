class CreateSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :settings do |t|
      t.string :newspapername
      t.string :tagline
      t.references :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
