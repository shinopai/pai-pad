class AddColumnImageToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :image, :string, after: 'title'
  end
end
