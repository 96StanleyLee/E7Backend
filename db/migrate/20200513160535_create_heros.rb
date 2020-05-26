class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :rarity
      t.string :role
      t.string :zodiac
      t.string :icon
      t.string :image
      t.string :api_id
      t.string :description

      t.timestamps
    end
  end
end
