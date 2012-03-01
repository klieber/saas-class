$LOAD_PATH << '../lib'
require 'part2'

describe "#rps_game_winner" do
  it "returns Armando for [ [ \"Armando\", \"R\" ], [ \"Dave\", \"R\" ] ]" do
    game = [ [ "Armando", "R" ], [ "Dave", "R" ] ]
    rps_game_winner(game).should eq([ "Armando", "R" ])
  end
  it "returns Dave for [ [ \"Armando\", \"R\" ], [ \"Dave\", \"P\" ] ]" do
    game = [ [ "Armando", "R" ], [ "Dave", "P" ] ]
    rps_game_winner(game).should eq([ "Dave", "P" ])
  end
  it "returns Armando for [ [ \"Armando\", \"R\" ], [ \"Dave\", \"S\" ] ]" do
    game = [ [ "Armando", "R" ], [ "Dave", "S" ] ]
    rps_game_winner(game).should eq([ "Armando", "R" ])
  end
  it "returns Armando for [ [ \"Armando\", \"P\" ], [ \"Dave\", \"P\" ] ]" do
    game = [ [ "Armando", "P" ], [ "Dave", "P" ] ]
    rps_game_winner(game).should eq([ "Armando", "P" ])
  end
  it "returns Dave for [ [ \"Armando\", \"P\" ], [ \"Dave\", \"S\" ] ]" do
    game = [ [ "Armando", "P" ], [ "Dave", "S" ] ]
    rps_game_winner(game).should eq([ "Dave", "S" ])
  end
  it "returns Armando for [ [ \"Armando\", \"S\" ], [ \"Dave\", \"P\" ] ]" do
    game = [ [ "Armando", "S" ], [ "Dave", "P" ] ]
    rps_game_winner(game).should eq([ "Armando", "S" ])
  end
  it "returns Armando for [ [ \"Armando\", \"S\" ], [ \"Dave\", \"S\" ] ]" do
    game = [ [ "Armando", "S" ], [ "Dave", "S" ] ]
    rps_game_winner(game).should eq([ "Armando", "S" ])
  end

  it "throws WrongNumberOfPlayersError for incorrect number of players" do
    lambda { 
      rps_game_winner([]) 
    }.should raise_error(WrongNumberOfPlayersError)
    lambda { 
      rps_game_winner([["Dave","S"]]) 
    }.should raise_error(WrongNumberOfPlayersError)
    lambda { 
      rps_game_winner([["Dave","R"],["Jim","P"],["Stan","S"]]) 
    }.should raise_error(WrongNumberOfPlayersError)
  end
  it "throws NoSuchStrategyError for incorrect strategy" do
    lambda { 
      rps_game_winner([["Bill","A"],["Fred","R"]]) 
    }.should raise_error(NoSuchStrategyError)
    lambda { 
      rps_game_winner([["Bill","A"],["Fred","R"]]) 
    }.should raise_error(NoSuchStrategyError)
    lambda { 
      rps_game_winner([["Bill","A"],["Fred","B"]]) 
    }.should raise_error(NoSuchStrategyError)
  end
end

describe "#rps_game_winner" do
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
    rps_tournament_winner(tournament).should eq(["Richard","R"])
  end
end
