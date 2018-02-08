class CreateSendmessages < ActiveRecord::Migration[5.1]
  def change
    create_table :sendmessages do |t|
      t.string :to
      t.string :from
      t.text :message

      t.timestamps
    end
  end
end
