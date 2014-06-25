lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruboty/asakusa_satellite_profile/version"

Gem::Specification.new do |spec|
  spec.name          = "ruboty-asakusa_satellite_profile"
  spec.version       = Ruboty::AsakusaSatelliteProfile::VERSION
  spec.authors       = ["shimomura1004"]
  spec.email         = ["graueule@gmail.com"]
  spec.summary       = "An ruboty handler to change the name and icon of the bot"
  spec.homepage      = "https://github.com/shimomura1004/ruboty-asakusa_satellite_profile"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_dependency "rest-client"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
