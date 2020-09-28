class GameController < ApplicationController
    def index
        games = Game.all
        render json: GameSerializer.new(games).to_serialized_json
      end

      def create
          game = Game.new(game_params)
          game.save
          render json: GameSerializer.new(Game.all)

      end

      def show
        game = Game.find_by(id: params[:id])
        render json: GameSerializer.new(game).to_serialized_json

      end

       def game_params
         params.require(:game).permit(:game)
      end

end