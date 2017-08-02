# README

This is a polymorphic test app.

It has a Topic and a nested Post which uses polymorphic association for both of their comments.

### Basic polymorphic setup:
* class Comment
  belongs_to :commentable, polymorphic: true

* class Topic
  has_many :comments, as: :commentable, dependent: :destroy

* class Post
  has_many :comments, as: :commentable, dependent: :destroy
