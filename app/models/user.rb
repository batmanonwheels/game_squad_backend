class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :games, through: :reviews
    has_secure_password

    # validates :first_name, :last_name, :username,:password, presence: true
end
