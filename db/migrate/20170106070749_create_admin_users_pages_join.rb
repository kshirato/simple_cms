class CreateAdminUsersPagesJoin < ActiveRecord::Migration[5.0]
  def up
    # 主キーは不要のためid: falseオプションを追加
    create_table :admin_users_pages, id: false do |t|
      t.integer 'admin_user_id'
      t.integer 'page_id'
    end
    # インデックスを両方の外部キーに追加
    add_index('admin_users_pages', %w(admin_user_id page_id))
  end

  def down
    drop_table :admin_users_pages
  end
end
