$LOAD_PATH << '../lib'
require 'part2'

describe Part2, "#rps_game_winner" do
  part2 = Part2.new
  it "returns Armando for [ [ \"Armando\", \"R\" ], [ \"Dave\", \"R\" ] ]" do
    game = [ [ "Armando", "R" ], [ "Dave", "R" ] ]
    part2.rps_game_winner(game).should eq([ "Armando", "R" ])
  end
  it "returns Dave for [ [ \"Armando\", \"R\" ], [ \"Dave\", \"P\" ] ]" do
    game = [ [ "Armando", "R" ], [ "Dave", "P" ] ]
    part2.rps_game_winner(game).should eq([ "Dave", "P" ])
  end
  it "returns Armando for [ [ \"Armando\", \"R\" ], [ \"Dave\", \"S\" ] ]" do
    game = [ [ "Armando", "R" ], [ "Dave", "S" ] ]
    part2.rps_game_winner(game).should eq([ "Armando", "R" ])
  end
  it "returns Armando for [ [ \"Armando\", \"P\" ], [ \"Dave\", \"P\" ] ]" do
    game = [ [ "Armando", "P" ], [ "Dave", "P" ] ]
    part2.rps_game_winner(game).should eq([ "Armando", "P" ])
  end
  it "returns Dave for [ [ \"Armando\", \"P\" ], [ \"Dave\", \"S\" ] ]" do
    game = [ [ "Armando", "P" ], [ "Dave", "S" ] ]
    part2.rps_game_winner(game).should eq([ "Dave", "S" ])
  end
  it "returns Armando for [ [ \"Armando\", \"S\" ], [ \"Dave\", \"P\" ] ]" do
    game = [ [ "Armando", "S" ], [ "Dave", "P" ] ]
    part2.rps_game_winner(game).should eq([ "Armando", "S" ])
  end
  it "returns Armando for [ [ \"Armando\", \"S\" ], [ \"Dave\", \"S\" ] ]" do
    game = [ [ "Armando", "S" ], [ "Dave", "S" ] ]
    part2.rps_game_winner(game).should eq([ "Armando", "S" ])
  end

  it "throws WrongNumberOfPlayersError for incorrect number of players" do
    lambda { 
      part2.rps_game_winner([]) 
    }.should raise_error(WrongNumberOfPlayersError)
    lambda { 
      part2.rps_game_winner([["Dave","S"]]) 
    }.should raise_error(WrongNumberOfPlayersError)
    lambda { 
      part2.rps_game_winner([["Dave","R"],["Jim","P"],["Stan","S"]]) 
    }.should raise_error(WrongNumberOfPlayersError)
  end
  it "throws NoSuchStrategyError for incorrect strategy" do
    lambda { 
      part2.rps_game_winner([["Bill","A"],["Fred","R"]]) 
    }.should raise_error(NoSuchStrategyError)
    lambda { 
      part2.rps_game_winner([["Bill","A"],["Fred","R"]]) 
    }.should raise_error(NoSuchStrategyError)
    lambda { 
      part2.rps_game_winner([["Bill","A"],["Fred","B"]]) 
    }.should raise_error(NoSuchStrategyError)
  end
end

describe Part2, "#rps_game_winner" do
  part2 = Part2.new
  it "returns Dave for this tournament" do
    tournament = 
    [
      [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
      ],
      [ 
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
      ]
    ]
    part2.rps_tournament_winner(tournament).should eq(["Richard","R"])
  end
end
