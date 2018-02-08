class AddToToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :to, :string
  end
end
