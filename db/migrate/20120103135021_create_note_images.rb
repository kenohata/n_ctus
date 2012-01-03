class CreateNoteImages < ActiveRecord::Migration
  def change
    create_table :note_images do |t|
      t.integer :note_id
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
