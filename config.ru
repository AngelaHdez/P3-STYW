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

use Rack::Static, urls => ["/css", "js"], :root => "public"
use Rack::Static, urls => ["/views"]

run App.new