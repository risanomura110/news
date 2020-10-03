class CreateWrites < ActiveRecord::Migration[6.0]
  def change
    create_table :writes do |t|
      t.string :name#名前
      t.text :text#経歴
      t.string :twitter#ツイッターurl
      t.string :blog#ブログ
      t.timestamps
    end
  end
end
