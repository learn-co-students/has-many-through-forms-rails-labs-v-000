class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  #accepts_nested_attributes_for :user

  def user_attributes=(hash)
    hash.each do |i, att|
      if att.present?
        user = User.find_or_create_by(:username => att)
        self.user = user
      end
    end
  end

end
