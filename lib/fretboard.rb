# frozen_string_literal: true

require "active_support/core_ext/object/blank"
require "active_support/core_ext/hash/except"

require "fretboard/exceptions/base"
require "fretboard/exceptions/unknown_tuning"
require "fretboard/exceptions/unknown_note"
require "fretboard/exceptions/not_built"

require "fretboard/note_formatter"

require "fretboard/builder"
require "fretboard/note"
require "fretboard/notes"
require "fretboard/tunings"

module Fretboard
end

require "fretboard/engine" if defined?(Rails::Engine)
