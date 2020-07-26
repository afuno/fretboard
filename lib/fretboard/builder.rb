require 'fretboard/console'

module Fretboard
  class Builder
    # fretboard = Fretboard::Builder.new(:standart)
    # fretboard = Fretboard::Builder.standart
    # fretboard = Fretboard::Builder.drop_c
    # fretboard = Fretboard::Builder.drop_d
    # fretboard = Fretboard::Builder.double_drop_d
    # fretboard = Fretboard::Builder.open_d

    # fretboard.build
    # fretboard.data
    # fretboard.draw

    DEFAULT_NUMBER_OF_FRETS = 12

    attr_reader :data

    def self.standart(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:standart, number_of_frets)
    end

    def self.drop_c(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:drop_c, number_of_frets)
    end

    def self.drop_d(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:drop_d, number_of_frets)
    end

    def self.double_drop_d(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:double_drop_d, number_of_frets)
    end

    def self.open_d(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:open_d, number_of_frets)
    end

    def initialize(tuning, number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      @tuning = tuning.upcase.to_sym
      @number_of_frets = number_of_frets

      @data = {}
    end

    def build(sharp_or_flat: :both)
      unless Fretboard::Tunings.exists?(@tuning)
        Fretboard::Console.danger('Unable to detect guitar tuning')
        return
      end

      tuning = Fretboard::Tunings.get(@tuning)
      strings = tuning[:STRINGS]
      number_of_strings = strings.size

      (1..number_of_strings).each do |string_number|
        puts
        puts "String: #{string_number}"
        puts

        current_note = strings[string_number][:NOTE]

        @data[string_number] = {}

        puts "Fret: 0 (#{current_note})"

        @data[string_number][0] = current_note

        (1..@number_of_frets).each do |fret|
          next_note = Fretboard::Note.next_for(
            current_note,
            sharp_or_flat: sharp_or_flat
          )

          puts "Fret: #{fret} (#{next_note})"

          @data[string_number][fret] = next_note

          current_note = next_note
        end
      end

      puts
      puts 'done'
    end

    def draw(sharp_or_flat: :both)
      headings = []
      rows = []

      @data.each_pair do |string_number, string_notes|
        row = []

        headings << '№'
        row << string_number

        headings << 0

        open_note = string_notes[0]

        if open_note.is_a?(Array)
          open_note = if sharp_or_flat == :both
                        open_note.join('/')
                      elsif sharp_or_flat == :sharp
                        open_note.first
                      else
                        open_note.last
                      end
        end

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
