module Fretboard
  class Tunings
    # Fretboard::Tunings.get(:standart)
    # Fretboard::Tunings.exists?(:standart)

    TUNINGS = {
      STANDART: {
        STRINGS: {
          1 => {
            NOTE: 'E'
          },
          2 => {
            NOTE: 'B'
          },
          3 => {
            NOTE: 'G'
          },
          4 => {
            NOTE: 'D'
          },
          5 => {
            NOTE: 'A'
          },
          6 => {
            NOTE: 'E'
          }
        }
      },

      DROP_C: {
        STRINGS: {
          1 => {
            NOTE: 'D'
          },
          2 => {
            NOTE: 'A'
          },
          3 => {
            NOTE: 'F'
          },
          4 => {
            NOTE: 'C'
          },
          5 => {
            NOTE: 'G'
          },
          6 => {
            NOTE: 'C'
          }
        }
      },

      DROP_D: {
        STRINGS: {
          1 => {
            NOTE: 'E'
          },
          2 => {
            NOTE: 'B'
          },
          3 => {
            NOTE: 'G'
          },
          4 => {
            NOTE: 'D'
          },
          5 => {
            NOTE: 'A'
          },
          6 => {
            NOTE: 'D'
          }
        }
      },

      DOUBLE_DROP_D: {
        STRINGS: {
          1 => {
            NOTE: 'D'
          },
          2 => {
            NOTE: 'B'
          },
          3 => {
            NOTE: 'G'
          },
          4 => {
            NOTE: 'D'
          },
          5 => {
            NOTE: 'A'
          },
          6 => {
            NOTE: 'D'
          }
        }
      },

      OPEN_C: {
        STRINGS: {
          1 => {
            NOTE: 'E'
          },
          2 => {
            NOTE: 'C'
          },
          3 => {
            NOTE: 'G'
          },
          4 => {
            NOTE: 'C'
          },
          5 => {
            NOTE: 'G'
          },
          6 => {
            NOTE: 'C'
          }
        }
      },

      OPEN_D: {
        STRINGS: {
          1 => {
            NOTE: 'D'
          },
          2 => {
            NOTE: 'A'
          },
          3 => {
            NOTE: [
              'F#',
              'Gb'
            ]
          },
          4 => {
            NOTE: 'D'
          },
          5 => {
            NOTE: 'A'
          },
          6 => {
            NOTE: 'D'
          }
        }
      },

      OPEN_G: {
        STRINGS: {
          1 => {
            NOTE: 'D'
          },
          2 => {
            NOTE: 'B'
          },
          3 => {
            NOTE: 'G'
          },
          4 => {
            NOTE: 'D'
          },
          5 => {
            NOTE: 'G'
          },
          6 => {
            NOTE: 'D'
          }
        }
      }
    }.freeze

    def self.get(tuning_name)
      new(tuning_name).get
    end

    def self.exists?(tuning_name)
      new(tuning_name).exists?
    end

    def initialize(tuning_name)
      @tuning_name = tuning_name.upcase.to_sym
    end

    def get
      TUNINGS[@tuning_name]
    end

    def exists?
      TUNINGS.key?(@tuning_name)
    end
  end
end
