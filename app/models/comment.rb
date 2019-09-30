class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank
  accepts_nested_attributes_for :post, reject_if: :all_blank


  def users_attributes=(user_attributes)
    user_attributes.values.each do |user_attribute|
      user = User.find_or_create_by(user_attribute)
      self.users << user
    end
  end

  def posts_attributes=(post_attributes)
    post_attributes.values.each do |post_attribute|
      post = Post.find_or_create_by(post_attribute)
      self.posts << posts
    end
  end
end
