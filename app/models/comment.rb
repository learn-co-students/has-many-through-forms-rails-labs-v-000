require 'pry'

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(input_hash)
    input_hash.values.each do |input|
      self.user = User.find_or_create_by(username: input) unless input.blank?
    end
  end

end
