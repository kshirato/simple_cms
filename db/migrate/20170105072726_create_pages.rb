class CreatePages < ActiveRecord::Migration[5.0]
  def up
    create_table :pages do |t|

      t.integer "subject_id"
      t.string "name"
      t.string "permalink"
      t.integer "position"
      t.boolean "visible", :default => false

      t.timestamps
    end

    # 検索に使う部分はインデックスを付与しておくとよい
    add_index("pages", "subject_id")
    add_index("pages", "permalink")
  end

  def down
    # indexも外した方がいいように見えるが、
    # テーブルごと落とすときは不要
    drop_table :pages
  end
end
