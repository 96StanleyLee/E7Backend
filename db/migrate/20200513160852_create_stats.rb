class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :attack
      t.integer :hp
      t.integer :def
      t.integer :speed
      t.integer :crit
      t.integer :cdmg
      t.string :story
      t.belongs_to :hero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
