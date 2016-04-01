class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user
  
   def user_attributes=(att)
    	if !self.user_id.present?
   		  att['username'] = 'Anonymous' unless !att['username'].blank?
   		  user = User.find_or_create_by(att)
   		  self.user = user
     	end
   end
  
end
