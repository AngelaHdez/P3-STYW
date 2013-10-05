require 'rack/request'
require 'rack/response'
require 'haml'

module RockPaperScissors
  class App 

    def initialize(app = nil)
      @app = app
      @defeat = {'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper'}
      @throws = ''
    end


    def call(env)
      req = Rack::Request.new(env)

      player_throw = req.GET["choice"]
      @throws = @defeat.keys
      

      if !@throws.include?(player_throw)
        do_it = "Choose one"
      else
        computer_throw = @throws.sample
      end
      anwser = ''
      anwser= if (player_throw == computer_throw && (player_throw != '' || computer_throw!=''))
        "tied"
      elsif computer_throw == @defeat[player_throw]
        "win"
      else
        "loose"
      end

      engine = Haml::Engine.new File.open("views/index.html.haml").read
      res = Rack::Response.new
      res.write engine.render({},
        :do_it => do_it,
        :anwser => anwser,
        :throws => @throws,
        :computer_throw => computer_throw,
        :player_throw => player_throw)

      res.finish
    end # call
  end   # App
end     # RockPaperScissors

if $0 == __FILE__
  require 'rack'
  require 'rack/showexceptions'
  Rack::Server.start(
  :app => Rack::ShowExceptions.new(
    Rack::Lint.new(
  	 RockPaperScissors::App.new)), 
  :Port => 9292,
  :server => 'thin'
  )
end