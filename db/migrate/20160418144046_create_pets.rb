class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.belongs_to :owner, index: true, foreign_key: true
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
