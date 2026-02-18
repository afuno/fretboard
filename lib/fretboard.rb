# frozen_string_literal: true

require "zeitwerk"

require "active_support/core_ext/object/blank"
require "active_support/core_ext/hash/except"

require "colorize"
require "terminal-table"

loader = Zeitwerk::Loader.for_gem
loader.setup

module Fretboard; end

require "fretboard/engine" if defined?(Rails::Engine)
