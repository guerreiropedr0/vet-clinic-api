class AddOwnerRefToAnimals < ActiveRecord::Migration[7.0]
  def change
    add_reference :animals, :owner, null: false, foreign_key: true
  end
end
