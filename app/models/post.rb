class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :comments, reject_if: proc {|attributes| attributes['content'].blank?}

  def categories_attributes=(categories_attributes)
    categories_attributes.each do |i, category_attributes|
      if category_attributes[:name].present?
      category = Category.find_or_create_by(name: category_attributes[:name])

        if !self.categories.include?(category)
          self.post_categories.build(:category => category)
        end
      end
    end

  end

  def user_attributes=(user_attributes)
    user_attributes.each do |i, user_attributes|
      if user_attributes[:username].present?
        user = User.find_or_create_by(username: user_attributes[:username])

        if !self.users.include?(user)
          self.user_attributes.build(:username => :username)
        end

      end
    end

  end

  def unique_users
    # binding.pry #a bunch of users are available
    self.users.uniq

  end

end
