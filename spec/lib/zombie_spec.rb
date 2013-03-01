require "spec_helper"
require "zombie"

describe Zombie do
  it "is named Ash" do
    zombie = Zombie.new
    zombie.name.should == 'Ash' #expectation
  end

  it "has no brans" do
    zombie = Zombie.new
    zombie.brains.should < 1 #modifier- matcher
  end

  it "is not alive, rotting, and tall" do 
    pending #makes example pending
    zombie = Zombie.new
    zombie.alive.should == false #or zombie.alive.should be_false
    zombie.rotting.should == true #or zombie.alive.should be_true
    zombie.height.should > 5 #or zombie.height.should be > 5 
  end

  xit "is hungry" do #pending example using x
    zombie = Zombie.new
    zombie.hungry?.should == true # or zombie.should be_hungry <- predicate matcher
  end
end
