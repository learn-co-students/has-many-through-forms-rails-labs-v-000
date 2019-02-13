class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user

  validates :user_id, uniqueness: true

  def user_attributes=(username)
    if !username[:username].empty?

      self.user = User.find_or_create_by(username)
    end
  end


end
