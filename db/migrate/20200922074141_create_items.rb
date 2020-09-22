class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :image
      t.string :name
      t.string :title
      t.integer :genre_id
      t.text :text
      t.timestamps
    end
  end
end
