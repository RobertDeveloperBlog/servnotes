class CreateNotes < ActiveRecord::Migration[8.0]
  def change
    create_table :notes do |t|
      t.date :date
      t.string :name
      t.text :comment
      t.string :priority
      t.date :deadline

      t.timestamps
    end
  end
end
