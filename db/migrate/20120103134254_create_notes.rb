class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string  :department
      t.integer :grade
      t.string  :teacher
      t.string  :term
      t.integer :year
      t.string  :kind

      t.timestamps
    end
  end
end
