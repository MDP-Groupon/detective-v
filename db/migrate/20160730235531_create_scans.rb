class CreateScans < ActiveRecord::Migration
  def change
    create_table :scans do |t|
      t.string :status
      t.references :repo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
