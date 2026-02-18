# frozen_string_literal: true

require "zeitwerk"

require "colorize"
require "optparse"
require "terminal-table"

loader = Zeitwerk::Loader.for_gem
loader.setup

module Fretboard; end

require "fretboard/engine" if defined?(Rails::Engine)
