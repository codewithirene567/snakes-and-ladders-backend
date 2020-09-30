class GameController < ApplicationController
    def index
        games = Game.all
        render json: GameSerializer.new(games).to_serialized_json
      end

      def create
          game = Game.new(game_params)
          #byebug
          game.save
          #iterate over all params[:allplayers].each 
          #find_or_create_by name 
          #returns an object
          #player.game_id = game.id
          #make it so that the game has many players and players belongs to a game
          #remove for loop that sends multiple fetch request
          #2:30 est
          render json: GameSerializer.new(Game.all)

      end

      def show
        game = Game.find_by(id: params[:id])
        render json: GameSerializer.new(game).to_serialized_json

      end

       def game_params
         params.require(:game).permit(:id, :currPlayer, :winStatus, :winnerName, :timeStamp)
      end
    
end