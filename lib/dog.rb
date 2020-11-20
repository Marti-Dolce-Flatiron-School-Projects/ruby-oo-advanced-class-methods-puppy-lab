# frozen_string_literal: true

require 'pry'
# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com
#
# dog.rb
class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def self.print_all
    # puts @@all.map(&:name) - another way to solve, but more complex than needed for this example
    puts @@all.map(&:name)
  end

  def self.clear_all
    @@all.clear
  end

  def save
    @@all << self
  end
end
