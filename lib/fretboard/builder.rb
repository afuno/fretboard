# frozen_string_literal: true

# require 'active_support/core_ext/hash'

require 'fretboard/console'

module Fretboard
  class Builder
    # fretboard = Fretboard::Builder.new(:standart)
    # fretboard = Fretboard::Builder.standart
    # fretboard = Fretboard::Builder.tuning_a
    # fretboard = Fretboard::Builder.open_a
    # fretboard = Fretboard::Builder.drop_a
    # fretboard = Fretboard::Builder.drop_a_sharp
    # fretboard = Fretboard::Builder.drop_a_flat
    # fretboard = Fretboard::Builder.tuning_b
    # fretboard = Fretboard::Builder.open_b
    # fretboard = Fretboard::Builder.drop_b
    # fretboard = Fretboard::Builder.drop_b_flat
    # fretboard = Fretboard::Builder.tuning_c
    # fretboard = Fretboard::Builder.open_c
    # fretboard = Fretboard::Builder.drop_c
    # fretboard = Fretboard::Builder.tuning_d
    # fretboard = Fretboard::Builder.open_d
    # fretboard = Fretboard::Builder.open_d_minor
    # fretboard = Fretboard::Builder.drop_d
    # fretboard = Fretboard::Builder.double_drop_d
    # fretboard = Fretboard::Builder.modal_d
    # fretboard = Fretboard::Builder.open_e
    # fretboard = Fretboard::Builder.tuning_f
    # fretboard = Fretboard::Builder.open_f
    # fretboard = Fretboard::Builder.tuning_g
    # fretboard = Fretboard::Builder.open_g
    # fretboard = Fretboard::Builder.open_g_minor
    # fretboard = Fretboard::Builder.drop_g_sharp
    # fretboard = Fretboard::Builder.modal_g

    # fretboard.build
    # fretboard.data
    # fretboard.draw

    DEFAULT_NUMBER_OF_FRETS = 12

    # METHODS_NAMES = %i[
    #   standart
    #   tuning_a
    #   open_a
    #   drop_a
    #   drop_a_sharp
    #   drop_a_flat
    #   tuning_b
    #   open_b
    #   drop_b
    #   drop_b_flat
    #   tuning_c
    #   open_c
    #   drop_c
    #   tuning_d
    #   open_d
    #   open_d_minor
    #   drop_d
    #   double_drop_d
    #   modal_d
    #   open_e
    #   tuning_f
    #   open_f
    #   tuning_g
    #   open_g
    #   open_g_minor
    #   drop_g_sharp
    #   modal_g
    # ].freeze

    attr_reader :data

    # METHODS_NAMES.each do |method_name|
    #   define_method(method_name) do |number_of_frets = DEFAULT_NUMBER_OF_FRETS|
    #     new(method_name, number_of_frets)
    #   end
    # end

    def self.standart(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:standart, number_of_frets)
    end

    def self.tuning_a(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:tuning_a, number_of_frets)
    end

    def self.open_a(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:open_a, number_of_frets)
    end

    def self.drop_a(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:drop_a, number_of_frets)
    end

    def self.drop_a_sharp(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:drop_a_sharp, number_of_frets)
    end

    def self.drop_a_flat(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:drop_a_flat, number_of_frets)
    end

    def self.tuning_b(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:tuning_b, number_of_frets)
    end

    def self.open_b(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:open_b, number_of_frets)
    end

    def self.drop_b(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:drop_b, number_of_frets)
    end

    def self.drop_b_flat(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:drop_b_flat, number_of_frets)
    end

    def self.tuning_c(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:tuning_c, number_of_frets)
    end

    def self.open_c(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:open_c, number_of_frets)
    end

    def self.drop_c(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:drop_c, number_of_frets)
    end

    def self.tuning_d(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:tuning_d, number_of_frets)
    end

    def self.open_d(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:open_d, number_of_frets)
    end

    def self.open_d_minor(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:open_d_minor, number_of_frets)
    end

    def self.drop_d(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:drop_d, number_of_frets)
    end

    def self.double_drop_d(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:double_drop_d, number_of_frets)
    end

    def self.modal_d(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:modal_d, number_of_frets)
    end

    def self.open_e(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:open_e, number_of_frets)
    end

    def self.tuning_f(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:tuning_f, number_of_frets)
    end

    def self.open_f(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:open_f, number_of_frets)
    end

    def self.tuning_g(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:tuning_g, number_of_frets)
    end

    def self.open_g(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:open_g, number_of_frets)
    end

    def self.open_g_minor(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:open_g_minor, number_of_frets)
    end

    def self.drop_g_sharp(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:drop_g_sharp, number_of_frets)
    end

    def self.modal_g(number_of_frets = DEFAULT_NUMBER_OF_FRETS)
      new(:modal_g, number_of_frets)
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
      unless @data.any?
        Fretboard::Console.danger('Create the data')
        return
      end

      headings = []
      rows = []

      @data.each_pair do |string_number, string_notes|
        row = []

        headings << '№'
        row << string_number

        headings << 0

        open_note = string_notes[0]

        if open_note.is_a?(Array)
          open_note = case sharp_or_flat
                      when :both
                        open_note.join('/')
                      when :sharp
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
