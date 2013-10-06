require './lib/rps.rb'
require 'rack'
require 'rack/showexceptions'
require 'thin'

use Rack::Server.start(
  :app => Rack::ShowExceptions.new(
    Rack::Lint.new(
  	 RockPaperScissors::App.new)), 
  :Port => 9292,
  :server => 'thin'
  )

use Rack::Static, urls => ["/css", "js"], :root => "public"
use Rack::Static, urls => ["/views"]
use Rack::Static, urls => ["/public"]

run App.new