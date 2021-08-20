class RenameColumnTypeInAnimals < ActiveRecord::Migration[6.1]
  def change
    rename_column :animals, :type, :animal_type
  end
end
