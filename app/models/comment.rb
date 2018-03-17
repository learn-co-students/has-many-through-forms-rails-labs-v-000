class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc{|attribute| attribute[:username].blank?}

  def user_attributes(user_hash)
      user = User.find_or_create_by(user_att)
      if user.username != nil
        self.user = user
      end
  end

end
