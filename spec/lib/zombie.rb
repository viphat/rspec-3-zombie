require 'spec_helper'
require 'zombie'
require 'tweet'

describe Zombie do
  # Your example test go here
  it 'is named Ash' do
    zombie = Zombie.new
    expect(zombie.name).to eq('Ash')
  end

  # Comparisons
  # expect(actual).to be expected (Object identity)
  # expect(actual).to eq expected (Object equilavent)
  # expect(actual).to be >  expected
  # expect(actual).to be >= expected
  # expect(actual).to be <= expected
  # expect(actual).to be <  expected
  # expect(actual).to be_between(minimum, maximum).inclusive
  # expect(actual).to be_between(minimum, maximum).exclusive
  # expect(actual).to match(/expression/)
  # expect(actual).to be_within(delta).of(expected)
  # expect(actual).to start_with expected
  # expect(actual).to end_with expected
  it 'has no brains' do
    # pending
    zombie = Zombie.new
    expect(zombie.brains).to be <(1)
  end

  # expect(actual).to be_truthy    # passes if actual is truthy (not nil or false)
  # expect(actual).to be true      # passes if actual == true
  # expect(actual).to be_falsey    # passes if actual is falsy (nil or false)
  # expect(actual).to be false     # passes if actual == false
  # expect(actual).to be_nil       # passes if actual is nil
  # expect(actual).to exist        # passes if actual.exist? and/or actual.exists? are truthy
  # expect(actual).to exist(*args) # passes if actual.exist?(*args) and/or actual.exists?(*args) are truthy
  xit 'is hungry' do
    zombie = Zombie.new
    expect(zombie.hungry?).to be true
  end

  it 'has a name that match "Asshole"' do
    zombie = Zombie.new(name: 'Asshole 1')
    expect(zombie.name).to match(/Asshole \d/)
  end

  it 'include tweets' do
    tweet1 = Tweet.new(status: 'Uuuuuuhhhhh')
    tweet2 = Tweet.new(status: 'Arrrgggghhhh')
    zombie = Zombie.new(name: 'Ass', tweets: [tweet1, tweet2])
    expect(zombie.tweets).to include(tweet1)
    expect(zombie.tweets).to include(tweet2)
  end

end
