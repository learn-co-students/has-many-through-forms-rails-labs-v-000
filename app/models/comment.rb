class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :fields_blank?

  def user_attributes=(user_attributes)
   user_attributes.values.each do |user_attribute|
     unless user_attribute.empty?
       user = User.find_or_create_by(username: user_attribute)
       self.user = user
     end
   end
 end

 private

   def fields_blank?(att)
     att[:username].blank?  && new_record?
   end
end
