class Post < ActiveRecord::Base
    has_many :post_categories
    has_many :categories, through: :post_categories
    has_many :comments
    has_many :commentors, through: :comments, source: :user

    belongs_to :user

    accepts_nested_attributes_for :categories
    accepts_nested_attributes_for :comments, reject_if: proc { |attributes| attributes['content'].blank?} 

    def categories_attributes= (category_attributes)
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

    def category_names
        self.categories.collect do |category|
            category.name 
        end.join(', ')
    end

    def list_of_commentors

        self.commentors.collect do |commentor|
            commentor.username
        end.join(', ')
    end
end
