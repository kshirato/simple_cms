class Page < ApplicationRecord
  belongs_to :subject, {optional: true}
  has_and_belongs_to_many :admin_users

  # なお、以下のようにjoinテーブルを指定することもできるが、
  # 規約にそって記述しているため不要
  # has_and_belongs_to_many :admin_users, join_table: 'admin_users_pages'
end
