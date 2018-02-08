class CreateMymessages < ActiveRecord::Migration[5.1]
  def change
    create_table :mymessages do |t|
      t.string :to
      t.string :from
      t.text :message

      t.timestamps
    end
  end
end
