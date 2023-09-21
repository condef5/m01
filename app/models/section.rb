class Section < ApplicationRecord
  validates :title, presence: true

  belongs_to :parent, class_name: 'Section', optional: true
  has_many :sub_sections, class_name: 'Section', foreign_key: 'parent_id'
  has_many :topics, dependent: :destroy
end
