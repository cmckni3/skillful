class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :candidate_id

      t.timestamps null: false
    end
    add_foreign_key :skills, :candidates
    add_index :skills, :candidate_id
  end
end
