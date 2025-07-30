class Reply < ApplicationRecord
  belongs_to :user
  belongs_to :post
  scope :reply_ordered, -> { order(created_at: :asc) }
end
