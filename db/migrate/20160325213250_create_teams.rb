class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.references :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_reference :users, :team, index: true, foreign_key: true
  end
end
