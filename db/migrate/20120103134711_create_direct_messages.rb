class CreateDirectMessages < ActiveRecord::Migration
  def change
    create_table :direct_messages do |t|
      t.integer :to_id
      t.integer :from_id
      t.text :content
      t.boolean :unread

      t.timestamps
    end
  end
end
