# frozen_string_literal: true

require_relative "lib/fretboard/version"

Gem::Specification.new do |spec|
  spec.name          = "fretboard"
  spec.version       = Fretboard::VERSION::STRING
  spec.platform      = Gem::Platform::RUBY

  spec.authors       = ["Anton Sokolov"]
  spec.email         = ["profox.rus@gmail.com"]

  spec.summary       = "Tools for working with the guitar fretboard"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/afuno/fretboard"

  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["documentation_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  # spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir["lib/**/*", "Rakefile", "README.md"]
  spec.require_paths = ["lib"]
  spec.executables   = ["fretboard"]

  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.add_runtime_dependency "activesupport", ">= 5.1"
  spec.add_runtime_dependency "colorize", ">= 0.8"
  spec.add_runtime_dependency "terminal-table", ">= 3.0"

  spec.add_development_dependency "appraisal", ">= 2.5"
  spec.add_development_dependency "rake", ">= 13.0"
  spec.add_development_dependency "rspec", ">= 3.12"
  spec.add_development_dependency "rubocop", ">= 1.57"
  spec.add_development_dependency "rubocop-performance", ">= 1.19"
  spec.add_development_dependency "rubocop-rake", ">= 0.6"
  spec.add_development_dependency "rubocop-rspec", ">= 2.24"
end
