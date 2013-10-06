require './lib/rps.rb'
require 'rack'
require 'rack/showexceptions'
require 'thin'

use Rack::Server.start(
  :app => Rack::ShowExceptions.new(
    Rack::Lint.new(
  	 RockPaperScissors::App.new)), 
  :Port => 9393,
  :server => 'thin'
  )

use Rack::Static, urls => ["/public"]
use Rack::Static, urls => ["/views"]

run App.new