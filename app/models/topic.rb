class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy

  has_many :comments, as: :commentable, dependent: :destroy

  validates :title, :body, presence: true

end
