class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string  :department
      t.string  :teacher
      t.text  :description

      t.timestamps
    end
  end
end
