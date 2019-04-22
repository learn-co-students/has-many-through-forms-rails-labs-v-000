require 'rails_helper'

describe 'Posts', type: 'feature' do

  describe 'new' do

    before :each do
      @cool = Category.create(name: 'Cool')
      visit 'posts/new'
      fill_in('post_title', :with => 'Feeling Awesome')
      fill_in('post_content', :with => 'This is going to be an awesome post!')
    end

  end
end
