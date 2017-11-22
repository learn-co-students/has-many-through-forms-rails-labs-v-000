class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :checking

  def checking(attributes)
    #won't reject on belongs_to
    binding.pry
  end

  def user_attributes=(user_attributes)
    #just the one hash
    # binding.pry
    self.user = User.find_or_create_by(username: user_attributes[:username])
  end
end
