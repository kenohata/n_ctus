class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :note_id
      t.integer :user_id
      t.text :content
      t.string :attachment

      t.timestamps
    end
  end
end
