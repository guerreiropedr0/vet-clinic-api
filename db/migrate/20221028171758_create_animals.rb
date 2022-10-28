class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.date :birth_date, null: false
      t.boolean :neutered, null: false
      t.decimal :weight_kg, null: false

      t.timestamps
    end
  end
end
