class Review < ApplicationRecord
    belongs_to :game, optional: true
    belongs_to :user, optional: true
end
