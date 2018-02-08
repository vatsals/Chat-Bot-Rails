class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.string :to
      t.string :from
      t.text :message

      t.timestamps
    end
  end
end
