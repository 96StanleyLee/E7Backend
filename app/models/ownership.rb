class Ownership < ApplicationRecord
  belongs_to :user
  belongs_to :hero
  has_many :comments
end
