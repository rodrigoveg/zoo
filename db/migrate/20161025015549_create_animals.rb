class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.references :animal_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
