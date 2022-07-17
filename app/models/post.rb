class Post < ApplicationRecord
  has_rich_text :body

  # associations
  belongs_to :user

  # validations
  validates :title, presence: true

  # scope
  scope :recent, -> { order(created_at: :desc).limit(5) }

  # callbacks
end
