class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.integer :user_id
      t.integer :readed_id

      t.timestamps
    end
  end
end
