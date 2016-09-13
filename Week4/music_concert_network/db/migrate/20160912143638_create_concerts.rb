class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :city
      t.decimal :price
      t.text :description
      t.string :venue
      t.date :date

      t.timestamps
    end
  end
end
