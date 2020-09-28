class PlayerController < ApplicationController
    def index
        players = Player.all
        render json: PlayerSerializer.new(games).to_serialized_json
      end

      def create
          player = Player.new(player_params)
          player.save
          players = []
          players.push(player)
          render json: PlayerSerializer.new(players)

      end

      def show
        player = Player.find_by(id: params[:id])
        render json: PlayerSerializer.new(player).to_serialized_json

      end

       def player_params
         params.require(:player).permit(:name, :currentPostion, :gameId, :playerId)
      end
     
end