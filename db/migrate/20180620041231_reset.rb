class Reset < ActiveRecord::Migration
  def change
    drop_table :Users;
    drop_table :Comments;
    drop_table :Posts;
  end
end
