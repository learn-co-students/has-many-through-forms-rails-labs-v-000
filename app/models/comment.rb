class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: lambda { |x| x[:username].empty? }

  def no_user
    binding.pry
  end
end
