class CreateWordTools < ActiveRecord::Migration[5.0]
  def change
    create_table :word_tools do |t|

      t.timestamps
    end
  end
end
