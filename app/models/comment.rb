class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank

  def user_attributes=(params)
    unless params[:username] == ""
      self.user = User.find_or_create_by(username: params[:username])
    end
  end
end
