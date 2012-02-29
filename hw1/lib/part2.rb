class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

class Part2

  def rps_game_winner(game)
    pieces = ["R","P","S"]
    raise WrongNumberOfPlayersError unless game.length == 2
    raise NoSuchStrategyError unless pieces.include?(game[0][1])
    raise NoSuchStrategyError unless pieces.include?(game[1][1])
    return game[0] if game[0][1] == game[1][1]
    first  = pieces.index(game[0][1])
    second = pieces.index(game[1][1])
    if (first + second == 2 && second == 2) 
      return game[0]
    elsif (first + second == 2)
      return game[1]
    end
    if first > second
      return game[0]
    else
      return game[1]
    end 
  end

  def rps_tournament_winner(game)
    one = game[0]
    two = game[1]
    if (one[0].kind_of?(Array) && two[0].kind_of?(Array))
      one = rps_tournament_winner(one)
      two = rps_tournament_winner(two)
    end
    return rps_game_winner([one,two])
  end
end
