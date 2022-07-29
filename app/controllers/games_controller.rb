class GamesController < ApplicationController
    def index 
        render json: Game.all, status: :ok
    end
end
