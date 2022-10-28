class CreateVets < ActiveRecord::Migration[7.0]
  def change
    create_table :vets do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.date :graduation_date, null: false

      t.timestamps
    end
  end
end
