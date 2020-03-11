
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "all_games/version"

Gem::Specification.new do |spec|
  spec.name          = "allgames"
  spec.version       = AllGames::VERSION
  spec.authors       = ["'Robert Salaiz'"]
  spec.email         = ["'work.salaizrm@gmail.com'"]

  spec.summary       = %q{"lets you search game."}
  spec.description   = %q{"lets you search game."}
  spec.homepage      = "http://rubygems.org/gems/all-games-cli-gem"
  spec.license       = "MIT"


  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
end
