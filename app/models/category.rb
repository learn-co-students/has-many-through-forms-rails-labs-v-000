class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories
<<<<<<< HEAD


  def downcase_name
    name.downcase
  end

end
=======
 
end
>>>>>>> 98fcc365fe2cb3c23cb67cf68ceab9b7e6b0110c
