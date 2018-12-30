class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories
  # accepts_nested_attributes_for :users


  def categories_attributes=(category_attributes)
    category_attributes.values.each do |cat_attr|
      if cat_attr[:name] != ""
        category = Category.find_or_create_by(cat_attr) 
        self.categories << category
      end
    end
  end

  # def user_username=(username)
  #   self.user = User.find_or_create_by(username: username)
  # end

  # def user_username
  #   self.user ? self.user.username : nil
  # end


end
