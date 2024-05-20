class ChangeDirectionToText < ActiveRecord::Migration[7.1]
  def change
    change_column :recipes, :directions, :text
  end
end
