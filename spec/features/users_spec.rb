require 'rails_helper'

describe 'users', type: 'feature' do

  before do
    @post = Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
    @user = User.create(username: 'CoolGuy5')
    @comment = @post.comments.build(content: "Great Post!", user: @user)
    @post.save
  end

  describe 'show page' do


  end



end
