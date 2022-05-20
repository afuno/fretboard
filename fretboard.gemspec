# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'fretboard/version'

Gem::Specification.new do |spec|
  spec.name          = 'fretboard'
  spec.version       = Fretboard::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Anton Sokolov']
  spec.email         = ['anton@sokolov.digital']
  spec.homepage      = 'https://github.com/afuno/fretboard'
  spec.licenses      = ['MIT']
  spec.summary       = 'Tools for working with the guitar fretboard'
  spec.description   = 'Tools for working with the guitar fretboard'

  spec.files         = `git ls-files -z *.md *.gemspec bin lib`.split("\x0")
  spec.require_paths = ['lib']

  spec.executables   = ['fretboard']

  spec.required_ruby_version = '>= 3.1.0'

  spec.add_dependency 'colorize', '~> 0.8.1'
  spec.add_dependency 'terminal-table', '~> 3.0.1'
  spec.add_development_dependency 'rubocop', '~> 1.29.1'
end
