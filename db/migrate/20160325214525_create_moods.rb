class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.date :local_date
      t.references :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_reference :teams, :mood, index: true, foreign_key: true
  end
end
