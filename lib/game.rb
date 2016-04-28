class Game

 attr_reader :player_1, :player_2, :current_turn, :current_opponent

	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
    @current_turn = player_1
    @current_opponent = player_2
	end

	def attack(player)
      player.reduce
  end

  def switch_turn
    @current_turn, @current_opponent = @current_opponent, @current_turn
  end

  def over?
    @current_turn.hit_points == 0
  end
end
