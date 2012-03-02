$LOAD_PATH << '../lib'
require 'part4'

describe Dessert,"#healthy" do
  it "correctly identifies healthy desserts" do
    cookie = Dessert.new("cookie", 350)
    yogurt = Dessert.new("yogurt", 150)
    icecream = Dessert.new("ice cream", 400)
    fruit = Dessert.new("fruit", 120)
    cookie.healthy?.should eq(false)
    cookie.delicious?.should eq(true)
    yogurt.healthy?.should eq(true)
    yogurt.delicious?.should eq(true)
    icecream.healthy?.should eq(false)
    icecream.delicious?.should eq(true)
    fruit.healthy?.should eq(true)
    fruit.delicious?.should eq(true)
  end
end

describe JellyBean do
  it "identifies black licorice as not delicious" do
    licorice = JellyBean.new("jelly bean", 100, "black licorice")
    licorice.delicious?.should eq(false)
  end
  
  it "identifies other flavors as delicious" do
    cotton = JellyBean.new("jelly bean", 100, "cotton candy")
    cotton.delicious?.should eq(true)
    fruity = JellyBean.new("jelly bean", 100, "fruity")
    fruity.delicious?.should eq(true)
  end
end
