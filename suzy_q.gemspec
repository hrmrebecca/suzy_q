# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'suzy_q/version'

Gem::Specification.new do |spec|
  spec.name          = "suzy_q"
  spec.version       = SuzyQ::VERSION
  spec.authors       = ["Rebecca Hunter", "Adam Hunter"]
  spec.email         = ["hrmrebecca@gmail.com", "adamhunter@me.com"]
  spec.summary       = %q{Suzy Q's purpose is to allow assignment and management of tasks}
  spec.description   = %q{suzy_q allows both admin and grunt level users; admins can assign and manage all tasks and manipulate all queues, and grunts can manage their own tasks and queues. }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",           "~> 1.6"
  # spec.add_development_dependency "dummy-application", "~> 1.1.1"
  spec.add_development_dependency "dummy-application"
  spec.add_development_dependency "rspec",             "~> 3.0.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "sqlite3"
end
