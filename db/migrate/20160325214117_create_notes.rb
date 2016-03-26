class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :local_date
      t.text :body
      t.references :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_reference :teams, :note, index: true, foreign_key: true
  end
end
