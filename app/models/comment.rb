class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(attr)

  	attr.values.each do |value|
  		if value.present?
  			user = User.find_or_create_by(attr)
  			user.comments << self
  		end
  	end
  end

  def user_id=(id)
  	# byebug
  	self.user = User.find(id)
  	self.save
  end

end
