class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :existing_user_blank
  accepts_nested_attributes_for :post

  
  
  def user_username=(name)
    self.user = User.find_or_create_by(username: name)
  end

  def user_username
     self.user ? self.user.username : nil
  end

  def existing_user_blank(attributes)
    attributes.blank?
  end

  
def user_attributes=(user_attributes)
    user_attributes.values.each do |user_attribute|
      self.user = User.find_or_create_by(user_attribute)
    end
  end
=begin
def posts_attributes=(posts_attributes)
   posts_attributes.values.each do |post_attribute|
      self.post = User.find_or_create_by(post_attribute)
    end
  end
ra
=end

end
