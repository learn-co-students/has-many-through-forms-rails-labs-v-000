class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  # accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['name'].blank? }

  # def user_attributes=(user_attributes)
  #   user = User.find_or_create_by(user_attributes)

  def user_attributes=(user_attributes)
    # raise user_attributes.inspect
      if user_attributes[:username] != ""
        user = User.find_or_create_by(user_attributes)
        self.user = user
      end
  end

end
