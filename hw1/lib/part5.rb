class Class
  def attr_accessor_with_history(*symbols)
    symbols.each do |symbol|
      attr_reader symbol.to_s  # create the attribute's getter
      attr_reader symbol.to_s+"_history" # create bar_history getter
      class_eval %Q[def #{symbol}=(val)\n@#{symbol}_history = [@#{symbol}] unless @#{symbol}_history\n@#{symbol}_history << val\n@#{symbol} = val\nend]
    end 
  end
end
