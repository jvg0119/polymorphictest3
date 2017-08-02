class Post < ApplicationRecord
  belongs_to :topic

  has_many :comments, as: :commentable, dependent: :destroy

  validates :title, :body, presence: true

end
