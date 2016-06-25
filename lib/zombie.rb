# require 'pry'
load 'lib/tweet.rb'
load 'lib/weapon.rb'

class Zombie
  attr_accessor :name, :brains, :tweets, :weapons

  def initialize(params={})
    @name = params[:name] || nil
    @brains = params[:brains] || 0
    @tweets = params[:tweets] || []
    @weapons = params[:weapons] || [Weapon.new('Canon'), Weapon.new('Knife')]
  end

  def hungry?
    true
  end

  def tweet!(tweet)
    @tweets.push(tweet)
  end

  def validate!()
    raise StandardError, "Zombie must have a name" if @name.nil?
  end

end
