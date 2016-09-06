class CreateGenerates < ActiveRecord::Migration[5.0]
  def change
    create_table :generates do |t|

      t.timestamps
    end
  end
end
