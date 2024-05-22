class AddDetailsToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :image_url, :string
    add_column :recipes, :vegetarian, :boolean
    add_column :recipes, :tools_needed, :text
  end
end
