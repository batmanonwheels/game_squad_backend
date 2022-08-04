class ReviewsController < ApplicationController

    before_action :set_review, only: [:show, :destroy]
    def index 
        render json: Review.all,status: :ok
    end

    def create 
        new_review = Review.create!(review_params)
        render json: new_review, status: :created
    end

    def show
        render json: @review,status: :ok, include: :user
    end

    def destroy
        @review.destroy
        head :no_content
    end

    def update
        @review.update!(review_params)
        render json: @review, status: :accepted
    end
    
    private 

    def set_review
        @review = Review.find(params[:id])
    end

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

    def vote_params
        params.permit(
            :upvotes,
            :downvotes
        )
    end


end
