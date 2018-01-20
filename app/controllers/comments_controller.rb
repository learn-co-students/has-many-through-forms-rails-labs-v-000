class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

#creates a comment with an existing user
#Failure/Error: expect(page).to have_content("#{@user.username} says: great post!")
#expected to find text "RealBigFish says: great post!" in "So Awesome Man am I a great blogger OR WHAT! Comment content Please select RealBigFish"
# ./spec/features/comments_spec.rb:17:in `block (2 levels) in <top (required)>'

#creates a comment and a new user
#Failure/Error: fill_in('comment_user_attributes_username', with: 'CoolPerson25')
#Capybara::ElementNotFound:
# ./spec/features/comments_spec.rb:22:in `block (2 levels) in <top (required)>'


  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
