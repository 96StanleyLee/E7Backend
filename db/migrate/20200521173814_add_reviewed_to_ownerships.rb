class AddReviewedToOwnerships < ActiveRecord::Migration[6.0]
  def change
    add_column :ownerships, :reviewed, :boolean
  end
end
