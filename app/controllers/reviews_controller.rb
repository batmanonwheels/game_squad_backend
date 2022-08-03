class ReviewsController < ApplicationController

    def index 
        render json: Review.all,status: :ok
    end

    def create 
        new_review = Review.create!(review_params)
        render json: new_review, status: :created
    end

    
    private 

    def review_params
        params.permit(
            :title,
            :description,
            :upvotes,
            :downvotes,
            :rating,
            :game_id,
            :user_id
        )
    end


end
