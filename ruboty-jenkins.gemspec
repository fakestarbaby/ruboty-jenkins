# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/jenkins/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-jenkins"
  spec.version       = Ruboty::Jenkins::VERSION
  spec.authors       = ["KidsStar Inc."]
  spec.email         = ["system@kidsstar.co.jp"]
  spec.summary       = %q{Kick build job in Jenkins via Ruboty.}
  spec.description   = spec.summary
  spec.homepage      = "https://gitlab.kidsstar.co.jp/kidsstar/ruboty-jenkins"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency "ruboty"
  spec.add_dependency "curb"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
