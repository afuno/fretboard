# frozen_string_literal: true

require "active_support/core_ext/object/blank"
require "active_support/core_ext/hash/except"

require "fretboard/builder"
require "fretboard/note"
require "fretboard/notes"
require "fretboard/tunings"

module Fretboard
  # extend Constants
end

require "fretboard/engine" if defined?(Rails::Engine)
