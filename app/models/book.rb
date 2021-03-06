class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :category

  validates :author, :category, presence: true
  validates_uniqueness_of :title, scope: [:author_id, :category_id]
end
