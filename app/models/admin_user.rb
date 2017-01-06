class AdminUser < ApplicationRecord
  has_many :section_edits
  has_and_belongs_to_many :page
end
