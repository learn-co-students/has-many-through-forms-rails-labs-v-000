class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user , reject_if: :empty_user_attributes


  def empty_user_attributes
    #binding.pry
    attributes['user_id']
  end
end
