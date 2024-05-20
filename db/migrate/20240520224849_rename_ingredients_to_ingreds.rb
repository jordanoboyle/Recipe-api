class RenameIngredientsToIngreds < ActiveRecord::Migration[7.1]
  def change
    rename_column :recipes, :ingredients, :ingreds
  end
end
