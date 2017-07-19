class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  # def categories_attributes=(categories_hashes)
  #   # {"0" => {"name"=>"new category 1"}, "1"=>{"name"=>new category 2"}}
  #   #how would i create a category for each of the hashes inside categories hashes ?
  #   categories_hashes.each do |i, category_attributes|
  #     #EITHER THIS OR ADD VALIDATIONS TO CATEGORY MODEL
  #
  #     if category_attributes[:name].present?
  #       category = Category.find_or_create_by(name: category_attributes[:name])
  #       if !self.categories.include?(category)
  #         self.post_categories.build(:category => category)
  #       #need to create a category that is already associated with this post and I need to make sure that this category doesn't already exist
  #       end
  #     end
  #   end
  # end

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end


end
