class AddBuildsToOwnership < ActiveRecord::Migration[6.0]
  def change
    add_column :ownerships, :builds, :string
  end
end
