class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  has_many :commentors, through: :comments, source: :user
  belongs_to :user 


  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

 def comments_attributes= (comments_attributes)
    comments_attributes.values.each do |comments_attribute|
        comment = Comment.create(comments_attribute)
        self.comments << comment
    end        
end


end
