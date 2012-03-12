class CartesianProduct
  include Enumerable
  # your code here
  def initialize(ary1,ary2)
    @ary1 = ary1
    @ary2 = ary2
  end

  def each
    @ary1.product(@ary2) do |p|
      yield p
    end 
  end
end

c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
# (nothing printed since Cartesian product
# of anything with an empty collection is empty)
