# frozen_string_literal: true

require "fretboard/console"
require "fretboard/tunings"
require "fretboard/exceptions/unknown_tuning"
require "fretboard/exceptions/not_built"
require "fretboard/note_formatter"

module Fretboard
  class Builder
    DEFAULT_NUMBER_OF_FRETS = 12

    attr_reader :data

    Fretboard::Tunings.list.each_key do |tuning_name|
      define_singleton_method(tuning_name.downcase) do |number_of_frets = DEFAULT_NUMBER_OF_FRETS|
        new(tuning_name, number_of_frets)
      end
    end

    def initialize(tuning, number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      @tuning = tuning.upcase.to_sym
      @number_of_frets = number_of_frets

      @data = {}
    end

    def build(sharp_or_flat: :both) # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
      raise Fretboard::Exceptions::UnknownTuning, @tuning unless Fretboard::Tunings.exists?(@tuning)

      @sharp_or_flat = sharp_or_flat

      tuning = Fretboard::Tunings.fetch(@tuning)
      strings = tuning[:STRINGS]
      number_of_strings = strings.size

      (1..number_of_strings).each do |string_number|
        current_note = strings[string_number][:NOTE]

        @data[string_number] = {}
        @data[string_number][0] = current_note

        (1..@number_of_frets).each do |fret|
          next_note = Fretboard::Note.next_for(
            current_note,
            sharp_or_flat: sharp_or_flat
          )

          @data[string_number][fret] = next_note

          current_note = next_note
        end
      end

      self
    end

    def draw(sharp_or_flat: @sharp_or_flat || :both) # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
      raise Fretboard::Exceptions::NotBuilt unless @data.any?

      headings = []
      rows = []

      @data.each_pair do |string_number, string_notes|
        row = []

        headings << "№"
        row << string_number

        headings << 0

        open_note = Fretboard::NoteFormatter.format(string_notes[0], sharp_or_flat: sharp_or_flat)

        row << open_note

        string_notes.except(0).each_pair do |fret, note|
          headings << fret
          row << note
        end

        rows << row
      end

      Fretboard::Console.print_table(headings.uniq, rows)

      nil
    end
  end
end
