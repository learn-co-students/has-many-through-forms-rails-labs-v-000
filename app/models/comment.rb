class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(attributes)
    if attributes["username"] == ""
      1 == 1
    else
      attributes.values.each do |value|
        typed_user = User.find_or_create_by(username: value)
        self.user = typed_user
      end
    end
  end

end
