class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :all_blank
  
end


#<input type="text" name="post[categories_attributes][0][name]" 
# id="post_categories_attributes_0_name" />
