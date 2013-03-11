require 'spec_helper'
require 'zombie'

describe Zombie do
  it 'is invalid without a name' do
    zombie = Zombie.new
    zombie.should_not be_valid
  end

  it "has a name that matches 'Ash Clone'" do
    zombie = Zombie.new(name: "Ash Clone 1")
    zombie.name.should match(/Ash Clone \d/)
  end

  it 'include tweets' do
    tweet1 = Tweet.new(status: "Uuuuunhhhhh")
    tweet2 = Tweet.new(status: "Arrrrgggg")
    zombie = Zombie.new(name: 'Ash', tweets: [tweet1, tweet2])
    zombie.tweets.should include(tweet1)
    zombie.tweets.should include(tweet2)
  end

  it 'starts with two weapons' do
    zombie = Zombie.new
    zombie.weapon.count.should == 2 #Or zombie.should have(2).weapons
  end

  it 'changes the number of Zombies' do
    zombie = Zombie.new(name: "Ash")
    expect { zombie.save }.to change { Zombie.count }.by(1) #Can use from(n) and to(n) also
  end

  it 'raises an error if saved without a name' do
    zombie = Zombie.new
    expect { zombie.save! }. to raise_error(
      ActiveRecord::RecordInvalid
    )
  end

  it { should respond_to(:name) }

  #refactored code example
  let(:rzombie) { Zombie.create }
  subject { rzombie }

  its(:name) { should be_nil }
  it { rzombie.weapon.count.should == 2 }

end

