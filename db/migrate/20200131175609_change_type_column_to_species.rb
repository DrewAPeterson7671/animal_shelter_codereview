class ChangeTypeColumnToSpecies < ActiveRecord::Migration[5.2]
  def change
    remove_column :animals, :type
    add_column :animals, :species, :string
  end
end
