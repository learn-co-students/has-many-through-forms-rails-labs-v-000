class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    user_attributes.each do |attribute, value|
      self.user = User.find_or_create_by(attribute.to_sym => value) if !value.empty?
    end
  end

end
