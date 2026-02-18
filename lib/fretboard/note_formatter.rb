# frozen_string_literal: true

module Fretboard
  module NoteFormatter
    def self.format(note, sharp_or_flat: :both)
      return note unless note.is_a?(Array)

      case sharp_or_flat
      when :both then note.join("/")
      when :sharp then note.first
      else note.last
      end
    end
  end
end
