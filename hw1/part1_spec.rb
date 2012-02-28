$LOAD_PATH << '.'
require 'part1'

describe Part1, "#palindrome?" do
  it "returns true for 'A man, a plan, a canal -- Panama'" do
    part1 = Part1.new
    part1.palindrome?("A man, a plan, a canal -- Panama").should eq(true)
  end
  it "returns true for 'Madam, I'm Adam!'" do
    part1 = Part1.new
    part1.palindrome?("Madam, I'm Adam!").should eq(true)
  end
  it "returns false for 'Abracadabra'" do
    part1 = Part1.new
    part1.palindrome?("Abracadabra").should eq(false)
  end
end

describe Part1, "#count_words" do
  it "returns {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1 } for 'A man, a plan, a canal -- Panama'" do
    part1 = Part1.new
    words = part1.count_words("A man, a plan, a canal -- Panama")
    words.should include(:a => 3)
    words.should include(:man => 1)
    words.should include(:canal => 1)
    words.should include(:panama => 1)
    words.should include(:plan => 1)
  end
end
