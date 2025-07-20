class Post < ApplicationRecord
  validates :text, presence: true
  scope :post_ordered, -> { order(created_at: :desc) } # 投稿は作成日を降順に並べます。
end
