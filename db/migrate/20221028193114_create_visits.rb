class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.references :animal, null: false, foreign_key: true
      t.references :vet, null: false, foreign_key: true
      t.date :visit_date, null: false

      t.timestamps
    end
  end
end
