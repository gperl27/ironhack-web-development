class RenameTitleComics < ActiveRecord::Migration[5.0]
  def change
    rename_column :comics, :titlle, :title
  end
end
