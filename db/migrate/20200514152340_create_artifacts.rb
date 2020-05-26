class CreateArtifacts < ActiveRecord::Migration[6.0]
  def change
    create_table :artifacts do |t|
      t.string :image
      t.string :icon
      t.string :name
      t.integer :rarity
      t.string :role
      t.string :description
      t.string :skill_description
      t.float :variable
      t.string :api_id

      t.timestamps
    end
  end
end
