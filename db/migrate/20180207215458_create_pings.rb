class CreatePings < ActiveRecord::Migration[5.1]
  def change
    create_table :pings do |t|
      t.string :to
      t.string :from
      t.text :message

      t.timestamps
    end
  end
end
