class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.belongs_to :hero, null: false, foreign_key: true
      t.belongs_to :artifact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
