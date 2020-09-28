class GameController < ApplicationController
    def index
        games = Game.all
        render json: GameSerializer.new(games).to_serialized_json
      end

      def create
          game = Game.new(game_params)
          game.save
          games = []
          games.push(game)
          render json: GameSerializer.new(games)

      end

      def show
        game = Game.find_by(id: params[:id])
        render json: GameSerializer.new(game).to_serialized_json

      end

       def game_params
         params.require(:game).permit(:name, :currentPostion, :playerId, :gameId)
      end
    
end