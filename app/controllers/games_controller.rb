class GamesController < ApplicationController

    before_action :set_game, only: :show
    def index
        render json: Game.all, status: :ok
    end

    def show
        render json: @game, status: :ok
    end

    private

    def set_game
        @game = Game.find(params[:id])
    end
end
