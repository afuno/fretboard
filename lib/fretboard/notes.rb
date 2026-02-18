# frozen_string_literal: true

module Fretboard
  class Notes
    BASIC_NOTES = {
      1 => "C",
      2 => %w[C# Db],
      3 => "D",
      4 => %w[D# Eb],
      5 => "E",
      6 => "F",
      7 => %w[F# Gb],
      8 => "G",
      9 => %w[G# Ab],
      10 => "A",
      11 => %w[A# Bb],
      12 => "B"
    }.freeze

    def self.all(sharp_or_flat = :sharp)
      BASIC_NOTES.map do |_key, value|
        Fretboard::NoteFormatter.format(value, sharp_or_flat: sharp_or_flat)
      end
    end

    def self.first
      all.first
    end
  end
end
