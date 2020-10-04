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
          sleep 100
      end

      def show
        game = Game.find_by(id: params[:id])
        render json: GameSerializer.new(game).to_serialized_json

      end

      def update
        game = Game.find_by_id(params[:id])
        game.update(game_params)
        if game.save
          render json: GameSerializer.new(game)
        else
          render json: {error: 'Could not find game'}
        end
        sleep 100
      end

       def game_params
         params.require(:game).permit(:id, :currPlayer, :winStatus, :winnerName, :timeStamp)
      end
    
end