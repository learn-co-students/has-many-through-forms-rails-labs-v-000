class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
   def user_attributes=(att)
   	if !self.user_id.present?
  		att['username'] = 'Anonymous' unless !att['username'].blank?
  		user = User.find_or_create_by(att)
  		self.user = user
  	end
  end

end
