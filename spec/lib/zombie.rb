require 'spec_helper'
require 'rspec/collection_matchers'

require 'zombie'
require 'tweet'

describe Zombie do
  let(:tweet1) { Tweet.new(status: 'Uuuuuuhhhhh') }
  let(:tweet2) { Tweet.new(status: 'Arrrgggghhhh') }
  subject { Zombie.new(name: 'Ash') }
  # Your example test go here
  it 'is named Ash' do
    # zombie = Zombie.new(name: 'Ash')
    expect(subject.name).to eq('Ash')
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
    # pending an example
    # pending
    # In RSpec 3, Pending will make an example failed
    expect(subject.brains).to be <(1)
  end

  # https://www.relishapp.com/rspec/rspec-core/v/3-4/docs/pending-and-skipped-examples

  # expect(actual).to be_truthy    # passes if actual is truthy (not nil or false)
  # expect(actual).to be true      # passes if actual == true
  # expect(actual).to be_falsey    # passes if actual is falsy (nil or false)
  # expect(actual).to be false     # passes if actual == false
  # expect(actual).to be_nil       # passes if actual is nil
  # expect(actual).to exist        # passes if actual.exist? and/or actual.exists? are truthy
  # expect(actual).to exist(*args) # passes if actual.exist?(*args) and/or actual.exists?(*args) are truthy
  xit 'is hungry' do
    # skip an example
    expect(subject.hungry?).to be true
  end

  it 'has a name that match "Asshole"' do
    zombie = Zombie.new(name: 'Asshole 1')
    expect(zombie.name).to match(/Asshole \d/)
  end

  it 'include tweets' do
    zombie = Zombie.new(name: 'Ass', tweets: [tweet1, tweet2])
    expect(zombie.tweets).to include(tweet1)
    expect(zombie.tweets).to include(tweet2)
  end

  it 'starts with two weapons' do
    expect(subject.weapons).to have(2).weapons
  end

  it 'changes number of tweets' do
    zombie = Zombie.new(name: 'Ass', tweets: [tweet1])
    expect {zombie.tweet!(tweet2)}.to change {zombie.tweets.count}.by(1)
  end

  it 'must raise an error' do
    subject.name = nil
    expect{subject.validate!}.to raise_error("Zombie must have a name")
  end

  # Built-in Matchers - http://www.relishapp.com/rspec/rspec-expectations/v/3-4/docs/built-in-matchers

  it 'respond to name' do
    expect(subject).to respond_to(:name)
    # DRY with subject (== Zombie.new - instance of described class)
    # Xem thêm subject tại https://www.relishapp.com/rspec/rspec-core/docs/subject/
  end

  # one-liner syntax: https://www.relishapp.com/rspec/rspec-core/v/3-4/docs/subject/one-liner-syntax
  it { is_expected.to respond_to(:name) }

  # https://relishapp.com/rspec/rspec-core/v/3-4/docs/helper-methods/let-and-let

end
