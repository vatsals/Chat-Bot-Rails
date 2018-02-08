class AddFromToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :from, :string
  end
end
