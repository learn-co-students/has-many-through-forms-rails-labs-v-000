require 'rails_helper'

describe 'comments', type: 'feature' do

  before do
    @category = Category.create(name: "Cool")
    @post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
    @user = User.create(username: 'RealBigFish')
    visit post_path(@post)
  end


end
