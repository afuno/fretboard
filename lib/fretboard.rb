# frozen_string_literal: true

require "zeitwerk"

require "active_support/core_ext/object/blank"
require "active_support/core_ext/hash/except"

loader = Zeitwerk::Loader.for_gem
loader.setup

module Fretboard
  # extend Constants
end

require "fretboard/engine" if defined?(Rails::Engine)
