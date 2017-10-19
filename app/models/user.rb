class User < ActiveRecord::Base
  has_many :comments#add methods such as ??
   #http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html#Nested Associations
  # User.comments.empty?
  # User#comments.empty?, 
  # User#comments.size, 
  # User#comments, 
  # User#comments<<(milestone), 
  # User#comments.delete(milestone), 
  # User#comments.destroy(milestone), 
  # User#comments.find(milestone_id), 
  # User#comments.build, 
  # User#comments.create
    has_many :posts, through: :comments#add methods such as ????
   #https://ducktypelabs.com/how-a-has_many-through-association-works-in-practice/
   has_many :commented_posts,  through: :comments, source: :post
   #https://www.learneroo.com/modules/137/nodes/767

  def comments_attributes=(comment_attributes)
   comment_attributes.values.each do |comment_attribute|
     comment = Comment.find_or_create_by(comment_attribute)
     self.user_comments.build(comment: comment)
   end
  end
end
