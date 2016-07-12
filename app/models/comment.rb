class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, :reject_if => proc{|attributes| attributes['username'].blank?}


 # def user_attributes=(attributes)
 #   if @user
 #   @user = User.find_or_create_by(attributes)
 #   self.user = @user
 #   end
 # end

#  def user_attributes

 # end

end
