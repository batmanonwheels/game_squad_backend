class Review < ApplicationRecord
    belongs_to :game, optional: true
    belongs_to :user, optional: true

    default_scope { order(upvotes: :desc) }
    default_scope { order(downvotes: :desc) }
end
