$LOAD_PATH << '../lib'
require 'part3'

describe "#combine_anagrams" do
  it "correctly combines anagrams" do
    words = [
      'cars',
      'for',
      'potatoes',
      'racs',
      'four',
      'scar',
      'creams',
      'scream'
    ]
    anagrams = combine_anagrams(words)
    anagrams.should include(["cars", "racs", "scar"])
    anagrams.should include(["for"])
    anagrams.should include(["four"])
    anagrams.should include(["potatoes"])
    anagrams.should include(["creams", "scream"])
  end
end
