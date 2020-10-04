class PlayerController < ApplicationController
    def index
        players = Player.all
        render json: PlayerSerializer.new(players).to_serialized_json
      end

      def create
          player = Player.new(player_params)
          #player.game_id = Game.last.id
          #game saved to database, each player gets saved to database, assigned id of last id created
          player.save
         
          render json: PlayerSerializer.new(Player.all)
          sleep 100
      end

      def show
        player = Player.find_by(id: params[:id])
        render json: PlayerSerializer.new(player).to_serialized_json

      end

      def update
        player = Player.find_by_id(params[:id])
        player.update(player_params)
        if player.save
          render json: PlayerSerializer.new(player)
        else
          render json: {error: 'Could not find player'}
        end
        sleep 100
      end

       def player_params
         params.require(:player).permit(:id, :name, :currentPostion, :playerId, :timeStamp)
      end
     
end