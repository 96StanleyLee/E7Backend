class User < ApplicationRecord
    has_many :ownerships
    has_many :comments
    has_many :heros, through: :ownerships
    has_secure_password
    validates :username, presence: true, uniqueness: true


end
