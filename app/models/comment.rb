class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_attributes)
    user_attributes.each { |user_attribute|
      attr_name  = user_attribute[0]
      attr_value = user_attribute[1]

      if attr_name == "username" and attr_value.present?
        self.user = User.find_or_create_by(username: attr_value)
      end
    }
  end

end
