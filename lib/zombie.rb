require 'pry'
require 'tweet'

class Zombie
  attr_accessor :name, :brains, :tweets

  def initialize(params={})
    @name = params[:name] || 'Ash'
    @brains = params[:brains] || 0
    @tweets = params[:tweets] || []
  end

  def hungry?
    true
  end

end
