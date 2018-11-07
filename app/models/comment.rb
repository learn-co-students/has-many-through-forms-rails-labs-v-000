class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(hash)
    hash.each do |i, att|
      if att.present?
        user = User.find_or_create_by(:username => att)
        self.user = user
      end
    end
  end
end
