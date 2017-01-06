class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      # 作成するテーブルの列を定義する
      # idは自動的に追加される

      t.column 'first_name', :string, limit: 25
      t.string 'last_name', limit: 50
      t.string 'email', default: '', null: false
      t.string 'password', limit: 40

      t.timestamps

      # 以下の省略形
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end

  def down
    drop_table :users
  end
end
