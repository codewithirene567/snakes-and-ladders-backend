class PlayerController < ApplicationController
    def index
        players = Player.all
        render json: PlayerSerializer.new(players).to_serialized_json
      end

      def create
          
          #player.game_id = Game.last.id
          #game saved to database, each player gets saved to database, assigned id of last id created
        player_params.each do |player_info|
          player = Player.new(player_info)
          player.save
        end
          render json: PlayerSerializer.new(player_params[0])
        
      end

      def show
        player = Player.find_by(id: params[:id])
        render json: PlayerSerializer.new(player).to_serialized_json

      end

      def update
        player_params.each do |player_info|
          player = Player.find_by_id(player_info[:id])
          
          player.update(player_info)
        end
          render json: PlayerSerializer.new(player_params[0])
  
      end

       def player_params
         ##params.require(:player).permit(:id, :name, :currentPostion, :playerId, :timeStamp)
         params.permit(_json: [
           :id, :name, :currentPostion, :playerId, :timeStamp]).require(:_json)
      end
     
end
