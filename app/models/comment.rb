class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(attributes)
    user = User.find_or_create_by(attributes)
    self.user = user if self.user == nil
  end

end
