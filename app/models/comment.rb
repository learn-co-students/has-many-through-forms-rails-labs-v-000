class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :username?

  def username?(field)
    field[:username].empty?
  end
end
