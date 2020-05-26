class ChangeCritToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :stats, :crit, :float
    change_column :stats, :cdmg, :float


  end
end
