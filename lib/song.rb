require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'



class Song
  extend Findable
  extend Memorable
  include Paramable



  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end



  def self.all
    @@songs
  end

 

  def artist=(artist)
    @artist = artist
  end



 


end
