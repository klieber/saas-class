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
  it "returns Armando for [ [ \"Armando\", \"S\" ], [ \"Dave\", \"S\" ] ]" do
    game = [ [ "Armando", "S" ], [ "Dave", "S" ] ]
    part2.rps_game_winner(game).should eq([ "Armando", "S" ])
  end
end
