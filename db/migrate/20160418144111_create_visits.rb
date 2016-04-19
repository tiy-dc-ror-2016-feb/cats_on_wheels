class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.belongs_to :pet, index: true, foreign_key: true
      t.text :notes

      t.timestamps null: false
    end
  end
end
