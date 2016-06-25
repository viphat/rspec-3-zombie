# require 'pry'
require 'tweet'
require 'weapon'

class Zombie
  attr_accessor :name, :brains, :tweets, :weapons

  def initialize(params={})
    @name = params[:name] || 'Ash'
    @brains = params[:brains] || 0
    @tweets = params[:tweets] || []
    @weapons = params[:weapons] || [Weapon.new('Canon'), Weapon.new('Knife')]
  end

  def hungry?
    true
  end

end
