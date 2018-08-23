class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :empty_fields?

  def empty_fields?
binding.pry # reject_if not working
    # attributes['title'].blank?
  end

end
