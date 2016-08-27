class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    user_attributes.each do |attribute, value|
      self.user = User.find_or_create_by(attribute.to_sym => value) if !value.empty?
    end
  end

  def user_id=(user_id)
    self.user = User.find(user_id)
  end

  def post_id=(post_id)
    self.post = Post.find(post_id)
  end
end
