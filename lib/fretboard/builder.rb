require 'terminal-table'

module Fretboard
  class Builder
    # result = Fretboard::Builder.new(:STANDART)
    # result = result.build
    # result = result.draw

    def self.build(tuning, number_of_frets = 12)
      new(tuning, number_of_frets).build
    end

    def initialize(tuning, number_of_frets = 12)
      @tuning = tuning.upcase.to_sym
      @number_of_frets = number_of_frets

      @result = {}
    end

    def build
      unless Fretboard::Constants::GUITAR_TUNINGS.key?(@tuning)
        puts 'Unable to detect guitar tuning'
        return
      end

      tuning = Fretboard::Constants::GUITAR_TUNINGS[@tuning]
      strings = tuning[:STRINGS]
      number_of_strings = strings.size

      (1..number_of_strings).each do |string_number|
        puts
        puts "String: #{string_number}"
        puts

        current_note = strings[string_number][:NOTE]

        @result[string_number] = {}

        puts "Fret: 0 (#{current_note})"

        @result[string_number][0] = current_note

        (1..@number_of_frets).each do |fret|
          next_note = Fretboard::Note.next_for(current_note)

          puts "Fret: #{fret} (#{next_note})"

          @result[string_number][fret] = next_note

          current_note = next_note
        end
      end

      puts
      puts 'done'
    end

    def draw
      headings = []
      rows = []

      @result.each_pair do |string_number, string_notes|
        row = []

        headings << '№'
        row << string_number

        headings << 0
        row << string_notes[0]

        string_notes.except(0).each_pair do |fret, note|
          headings << fret
          row << Fretboard::Note.formated(note)
        end

        rows << row
      end

      table = Terminal::Table.new(
        headings: headings.uniq,
        rows: rows,
        style: { border_x: '~', border_i: '~' }
      )

      puts table

      nil
    end
  end
end
