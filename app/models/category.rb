class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  # def post_ids=(ids)
  #   ids.each do |id|
  #     post = Post.find(id)
  #     self.posts << post 
  #   end 
  # end    

end
