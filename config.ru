require './lib/rps.rb'
require 'rack'
require 'rack/showexceptions'

use Rack::Server.start(
  :app => Rack::ShowExceptions.new(
    Rack::Lint.new(
  	 RockPaperScissors::App.new)), 
  :Port => 9292,
  :server => 'thin'
  )

run App.new