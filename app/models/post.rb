class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories


  
  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end


  ## So I think I need a setter for the comment_content. Adding a new comment. Try update method first
  #if nested? see above. 

 # def comment_content=(comment_content)
 #   comment = Comment.find_or_create_by(content: comment_content)
  #  self.post << comment
 # end


#  def comment_content
 #   self.comments.each do |comment|
  #    comment.content
 #   end
#  end

  

 # def category_ids=(category_ids)
 #   category_ids.delete("")
  #  category_ids.each do |ids|
 #     category = Category.find(ids)
  #    if category
   #   self.categories << category
   # end
   # end
 # end

 # def comment_content=(comment_content)
 #   comment = Comment.create(comment_content)
  #  self.comments << comment
 # end

end
