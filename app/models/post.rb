class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      if category_attribute[:name] != ""
        category = Category.find_or_create_by(category_attribute)
        self.categories << category
      else
        errors.add(:category_attribute, "Attribute error in name!")
      end
    end
  end

  def users=(user)
    if !self.users.empty?
      self.users.each do |pus|
        if pus.username == user.username
          errors.add(:users, "duplicate users")
        else
          user = User.find_or_create_by(user)
          self.users << user
        end
      end
    end
  end


end
