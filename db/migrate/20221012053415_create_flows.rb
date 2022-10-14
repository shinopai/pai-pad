class CreateFlows < ActiveRecord::Migration[7.0]
  def change
    create_table :flows do |t|
      t.text :body, null: false
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
