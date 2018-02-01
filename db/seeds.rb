

Post.create(:title => "Tuesday's Thoughts", :content => "Fantastic day, but bad politics")
Post.create(:title => "Wednesday's Ramblings", :content => "All that happened today, plus great music")

User.create(:username => "miriam", :email => "Mir@mail.com")
User.create(:username => "amelia", :email => "amelia@mail.com")

Category.create(:name=> "daily news")
Category.create(:name=> "music")
Category.create(:name=> "upbeat stuff")
Category.create(:name=> "pessimism")

Comment.create(:content => "great post", :user_id=> 1, :post_id=>1)
Comment.create(:content => "nice post", :user_id=> 1, :post_id=>2)
Comment.create(:content => "is this a post", :user_id=> 2, :post_id=>1)


