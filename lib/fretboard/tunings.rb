# frozen_string_literal: true

module Fretboard
  class Tunings # rubocop:disable Metrics/ClassLength
    # Fretboard::Tunings.fetch(:standard)
    # Fretboard::Tunings.exists?(:standard)

    TUNINGS = {
      STANDARD: {
        STRINGS: {
          1 => { NOTE: "E" },
          2 => { NOTE: "B" },
          3 => { NOTE: "G" },
          4 => { NOTE: "D" },
          5 => { NOTE: "A" },
          6 => { NOTE: "E" }
        }
      },

      TUNING_A: {
        STRINGS: {
          1 => { NOTE: "A" },
          2 => { NOTE: "E" },
          3 => { NOTE: "C" },
          4 => { NOTE: "G" },
          5 => { NOTE: "D" },
          6 => { NOTE: "A" }
        }
      },

      OPEN_A: {
        STRINGS: {
          1 => { NOTE: "E" },
          2 => { NOTE: "A" },
          3 => { NOTE: "E" },
          4 => { NOTE: %w[C# Db] },
          5 => { NOTE: "A" },
          6 => { NOTE: "E" }
        }
      },

      DROP_A: {
        STRINGS: {
          1 => { NOTE: "B" },
          2 => { NOTE: %w[F# Gb] },
          3 => { NOTE: "D" },
          4 => { NOTE: "A" },
          5 => { NOTE: "E" },
          6 => { NOTE: "A" }
        }
      },

      DROP_A_SHARP: {
        STRINGS: {
          1 => { NOTE: "C" },
          2 => { NOTE: "G" },
          3 => { NOTE: %w[D# Eb] },
          4 => { NOTE: %w[A# Bb] },
          5 => { NOTE: "F" },
          6 => { NOTE: %w[A# Bb] }
        }
      },

      DROP_A_FLAT: {
        STRINGS: {
          1 => { NOTE: %w[A# Bb] },
          2 => { NOTE: "F" },
          3 => { NOTE: %w[C# Db] },
          4 => { NOTE: %w[G# Ab] },
          5 => { NOTE: %w[D# Eb] },
          6 => { NOTE: %w[G# Ab] }
        }
      },

      TUNING_B: {
        STRINGS: {
          1 => { NOTE: "B" },
          2 => { NOTE: %w[F# Gb] },
          3 => { NOTE: "D" },
          4 => { NOTE: "A" },
          5 => { NOTE: "E" },
          6 => { NOTE: "B" }
        }
      },

      OPEN_B: {
        STRINGS: {
          1 => { NOTE: %w[D# Eb] },
          2 => { NOTE: "B" },
          3 => { NOTE: %w[F# Gb] },
          4 => { NOTE: "B" },
          5 => { NOTE: %w[F# Gb] },
          6 => { NOTE: "B" }
        }
      },

      DROP_B: {
        STRINGS: {
          1 => { NOTE: %w[C# Db] },
          2 => { NOTE: %w[G# Ab] },
          3 => { NOTE: "E" },
          4 => { NOTE: "B" },
          5 => { NOTE: %w[F# Gb] },
          6 => { NOTE: "B" }
        }
      },

      DROP_B_FLAT: {
        STRINGS: {
          1 => { NOTE: "C" },
          2 => { NOTE: "G" },
          3 => { NOTE: %w[D# Eb] },
          4 => { NOTE: %w[A# Bb] },
          5 => { NOTE: "F" },
          6 => { NOTE: %w[A# Bb] }
        }
      },

      TUNING_C: {
        STRINGS: {
          1 => { NOTE: "C" },
          2 => { NOTE: "G" },
          3 => { NOTE: %w[D# Eb] },
          4 => { NOTE: %w[A# Bb] },
          5 => { NOTE: "F" },
          6 => { NOTE: "C" }
        }
      },

      OPEN_C: {
        STRINGS: {
          1 => { NOTE: "E" },
          2 => { NOTE: "C" },
          3 => { NOTE: "G" },
          4 => { NOTE: "C" },
          5 => { NOTE: "G" },
          6 => { NOTE: "C" }
        }
      },

      DROP_C: {
        STRINGS: {
          1 => { NOTE: "D" },
          2 => { NOTE: "A" },
          3 => { NOTE: "F" },
          4 => { NOTE: "C" },
          5 => { NOTE: "G" },
          6 => { NOTE: "C" }
        }
      },

      TUNING_D: {
        STRINGS: {
          1 => { NOTE: "D" },
          2 => { NOTE: "A" },
          3 => { NOTE: "F" },
          4 => { NOTE: "C" },
          5 => { NOTE: "G" },
          6 => { NOTE: "D" }
        }
      },

      OPEN_D: {
        STRINGS: {
          1 => { NOTE: "D" },
          2 => { NOTE: "A" },
          3 => { NOTE: %w[F# Gb] },
          4 => { NOTE: "D" },
          5 => { NOTE: "A" },
          6 => { NOTE: "D" }
        }
      },

      OPEN_D_MINOR: {
        STRINGS: {
          1 => { NOTE: "D" },
          2 => { NOTE: "A" },
          3 => { NOTE: "F" },
          4 => { NOTE: "D" },
          5 => { NOTE: "A" },
          6 => { NOTE: "D" }
        }
      },

      DROP_D: {
        STRINGS: {
          1 => { NOTE: "E" },
          2 => { NOTE: "B" },
          3 => { NOTE: "G" },
          4 => { NOTE: "D" },
          5 => { NOTE: "A" },
          6 => { NOTE: "D" }
        }
      },

      DOUBLE_DROP_D: {
        STRINGS: {
          1 => { NOTE: "D" },
          2 => { NOTE: "B" },
          3 => { NOTE: "G" },
          4 => { NOTE: "D" },
          5 => { NOTE: "A" },
          6 => { NOTE: "D" }
        }
      },

      MODAL_D: {
        STRINGS: {
          1 => { NOTE: "D" },
          2 => { NOTE: "A" },
          3 => { NOTE: "G" },
          4 => { NOTE: "D" },
          5 => { NOTE: "A" },
          6 => { NOTE: "D" }
        }
      },

      OPEN_E: {
        STRINGS: {
          1 => { NOTE: "E" },
          2 => { NOTE: "B" },
          3 => { NOTE: %w[G# Ab] },
          4 => { NOTE: "E" },
          5 => { NOTE: "B" },
          6 => { NOTE: "E" }
        }
      },

      TUNING_F: {
        STRINGS: {
          1 => { NOTE: "F" },
          2 => { NOTE: "C" },
          3 => { NOTE: %w[G# Ab] },
          4 => { NOTE: %w[D# Eb] },
          5 => { NOTE: %w[A# Bb] },
          6 => { NOTE: "F" }
        }
      },

      TUNING_G: {
        STRINGS: {
          1 => { NOTE: "G" },
          2 => { NOTE: "D" },
          3 => { NOTE: %w[A# Bb] },
          4 => { NOTE: "F" },
          5 => { NOTE: "C" },
          6 => { NOTE: "G" }
        }
      },

      OPEN_F: {
        STRINGS: {
          1 => { NOTE: "F" },
          2 => { NOTE: "C" },
          3 => { NOTE: "F" },
          4 => { NOTE: "C" },
          5 => { NOTE: "A" },
          6 => { NOTE: "F" }
        }
      },

      OPEN_G: {
        STRINGS: {
          1 => { NOTE: "D" },
          2 => { NOTE: "B" },
          3 => { NOTE: "G" },
          4 => { NOTE: "D" },
          5 => { NOTE: "G" },
          6 => { NOTE: "D" }
        }
      },

      OPEN_G_MINOR: {
        STRINGS: {
          1 => { NOTE: "D" },
          2 => { NOTE: %w[A# Bb] },
          3 => { NOTE: "G" },
          4 => { NOTE: "D" },
          5 => { NOTE: "G" },
          6 => { NOTE: "D" }
        }
      },

      DROP_G_SHARP: {
        STRINGS: {
          1 => { NOTE: %w[A# Bb] },
          2 => { NOTE: "F" },
          3 => { NOTE: %w[C# Db] },
          4 => { NOTE: %w[G# Ab] },
          5 => { NOTE: %w[D# Eb] },
          6 => { NOTE: %w[G# Ab] }
        }
      },

      MODAL_G: {
        STRINGS: {
          1 => { NOTE: "D" },
          2 => { NOTE: "C" },
          3 => { NOTE: "G" },
          4 => { NOTE: "D" },
          5 => { NOTE: "G" },
          6 => { NOTE: "D" }
        }
      }
    }.freeze

    private_constant :TUNINGS

    def self.list
      TUNINGS
    end

    def self.draw_list # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
      headings = []
      rows = []

      headings << "Tuning"
      headings << "Notes"

      list.each do |tuning_code, tuning_data|
        row = []

        row << tuning_code

        prepared_string_notes = tuning_data[:STRINGS].map do |_string_number, string_notes|
          note = string_notes[:NOTE]

          note.is_a?(Array) ? note.join("/") : note
        end.join(", ")

        row << prepared_string_notes

        rows << row
      end

      Fretboard::Console.print_table(headings.uniq, rows)

      nil
    end

    def self.fetch(tuning_name)
      new(tuning_name).fetch
    end

    def self.exists?(tuning_name)
      new(tuning_name).exists?
    end

    def initialize(tuning_name)
      @tuning_name = tuning_name.upcase.to_sym
    end

    def fetch
      TUNINGS[@tuning_name]
    end

    def exists?
      TUNINGS.key?(@tuning_name)
    end
  end
end
