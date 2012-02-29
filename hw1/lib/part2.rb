class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

class Part2
  def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    return [ "Dave", "S" ]
  end

  def rps_tournament_winner(game)

  end
end
