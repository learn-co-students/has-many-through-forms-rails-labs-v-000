class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  # accepts_nested_attributes_for :categories

  def categories_attributes=(categories_attributes) #same as accepts_nested_attributes_for method above
    categories_attributes.each do |categories_attributes|
      self.categories.build(categories_attributes)
    end
  end

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      # self.categories << category (correct but to inefficient)
      if !self.categories.include?(category) #prevents duplicate instances of post_categories when new Post form is submitted
        self.post_categories.build(:category => category)
        #creates instance of the post_categories join model, already associated with Post, passing in the category
      end
    end
  end

  def categories_attributes=(categories_hashes) #categories_attributes has its own attributes(categories_hashes) nested within the Post object
    categories_hashes.each do |i, category_attributes|
      if category_attributes[:name].present? #checks if the form's text_field has user input
        category = Category.find_or_create_by(name: category_attributes[:name]) #name is the nested attribute of categories_hashes
        if !self.categories.include?(category)  #checks if category name already exits
          self.post_categories.build(:category => category)
        end
      end
    end
  end
end
