class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, :reject_if => proc{|attributes| attributes['username'].blank?}

  def user_attributes(attributes)
      if attributes[:username].present
      user = User.find_or_create_by(username: attributes[:username])
      self.user_id = user.id
    end
 end

end
