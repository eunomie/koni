class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name

      t.timestamps null: false
    end
    add_reference :users, :organization, index: true, foreign_key: true
  end
end
