class GamesController < ApplicationController

    before_action :set_game, only: :show
    def index 
        render json: Game.all, serializer: GameWithReviewSerializer, status: :ok
    end

    def show 
        render json: @game, serializer: GameWithReviewSerializer
    end

    private 

    def set_game
        @game = Game.find(params[:id])
    end
end
