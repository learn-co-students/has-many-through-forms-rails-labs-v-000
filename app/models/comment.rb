class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank

  # def user_attributes=(params_hash)   #none of this will work if there's just one of the associated model (like in belongs_to or has_one)
  #   params_hash.values.each do |attr_key_value|
  #     user = User.find_or_create_by(attr_key_value)
  #     self.update(user: user)
  #   end
  # end
end
