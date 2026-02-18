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

  spec.required_ruby_version = Gem::Requirement.new(">= 2.7")

  spec.add_dependency "activesupport", ">= 5.1"
  spec.add_dependency "colorize", ">= 0.8"
  spec.add_dependency "terminal-table", ">= 4.0"

  spec.add_development_dependency "appraisal", ">= 2.5"
  spec.add_development_dependency "rake", ">= 13.0"
  spec.add_development_dependency "rspec", ">= 3.12"
  spec.add_development_dependency "servactory-rubocop", ">= 0.9"
end
