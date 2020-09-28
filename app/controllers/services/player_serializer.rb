class PlayerSerializer
    def initialize(player_object)
        @player = player_object
      
    end
    def to_serialized_json
        @player.to_json
    end
end