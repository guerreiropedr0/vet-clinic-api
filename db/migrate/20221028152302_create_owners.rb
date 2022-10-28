class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :name, null: false
      t.integer :age
      t.string :email

      t.timestamps
    end
  end
end
