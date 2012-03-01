$LOAD_PATH << '../lib'
require 'part1'

describe "#palindrome?" do
  it "returns true for 'A man, a plan, a canal -- Panama'" do
    palindrome?("A man, a plan, a canal -- Panama").should eq(true)
  end
  it "returns true for 'Madam, I'm Adam!'" do
    palindrome?("Madam, I'm Adam!").should eq(true)
  end
  it "returns false for 'Abracadabra'" do
    palindrome?("Abracadabra").should eq(false)
  end
end

describe "#count_words" do
  it "returns {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1 } for 'A man, a plan, a canal -- Panama'" do
    words = count_words("A man, a plan, a canal -- Panama")
    words.should include("a" => 3)
    words.should include("man" => 1)
    words.should include("canal" => 1)
    words.should include("panama" => 1)
    words.should include("plan" => 1)
  end
  
  it "returns {'doo' => 3, 'bee' => 2} for 'Doo bee doo bee doo'" do
    words = count_words("Doo bee doo bee doo")
    words.should include("doo" => 3)
    words.should include("bee"=> 2)
  end
end
