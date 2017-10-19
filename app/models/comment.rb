class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def post_title
    self.post.title
  end
end
