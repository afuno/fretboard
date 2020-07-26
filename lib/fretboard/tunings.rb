module Fretboard
  class Tunings
    # Fretboard::Tunings.get(:standart)
    # Fretboard::Tunings.exists?(:standart)

    # SPN   =>  Scientific pitch notation

    TUNINGS = {
      STANDART: {
        STRINGS: {
          1 => {
            NOTE: 'E',
            # FREQUENCY: '329.63 Hz',
            SPN: 'E4'
          },
          2 => {
            NOTE: 'B',
            # FREQUENCY: '246.94 Hz',
            SPN: 'B3'
          },
          3 => {
            NOTE: 'G',
            # FREQUENCY: '196.00 Hz',
            SPN: 'G3'
          },
          4 => {
            NOTE: 'D',
            # FREQUENCY: '146.83 Hz',
            SPN: 'D3'
          },
          5 => {
            NOTE: 'A',
            # FREQUENCY: '110.00 Hz',
            SPN: 'A2'
          },
          6 => {
            NOTE: 'E',
            # FREQUENCY: '82.41 Hz',
            SPN: 'E2'
          }
        }
      },

      DROP_C: {
        STRINGS: {
          1 => {
            NOTE: 'D',
            SPN: 'D4'
          },
          2 => {
            NOTE: 'A',
            SPN: 'A3'
          },
          3 => {
            NOTE: 'F',
            SPN: 'F3'
          },
          4 => {
            NOTE: 'C',
            SPN: 'C3'
          },
          5 => {
            NOTE: 'G',
            SPN: 'G2'
          },
          6 => {
            NOTE: 'C',
            SPN: 'C2'
          }
        }
      },

      DROP_D: {
        STRINGS: {
          1 => {
            NOTE: 'E',
            SPN: 'E4'
          },
          2 => {
            NOTE: 'B',
            SPN: 'B3'
          },
          3 => {
            NOTE: 'G',
            SPN: 'G3'
          },
          4 => {
            NOTE: 'D',
            SPN: 'D3'
          },
          5 => {
            NOTE: 'A',
            SPN: 'A2'
          },
          6 => {
            NOTE: 'D',
            SPN: 'D2'
          }
        }
      },

      DOUBLE_DROP_D: {
        STRINGS: {
          1 => {
            NOTE: 'D',
            SPN: 'D4'
          },
          2 => {
            NOTE: 'B',
            SPN: 'B3'
          },
          3 => {
            NOTE: 'G',
            SPN: 'G3'
          },
          4 => {
            NOTE: 'D',
            SPN: 'D3'
          },
          5 => {
            NOTE: 'A',
            SPN: 'A2'
          },
          6 => {
            NOTE: 'D',
            SPN: 'D2'
          }
        }
      },

      OPEN_C: {
        STRINGS: {
          1 => {
            NOTE: 'E',
            SPN: 'E4'
          },
          2 => {
            NOTE: 'C',
            SPN: 'C4'
          },
          3 => {
            NOTE: 'G',
            SPN: 'G3'
          },
          4 => {
            NOTE: 'C',
            SPN: 'C3'
          },
          5 => {
            NOTE: 'G',
            SPN: 'G2'
          },
          6 => {
            NOTE: 'C',
            SPN: 'C2'
          }
        }
      },

      OPEN_D: {
        STRINGS: {
          1 => {
            NOTE: 'D',
            SPN: 'D4'
          },
          2 => {
            NOTE: 'A',
            SPN: 'A3'
          },
          3 => {
            NOTE: [
              'F#',
              'Gb'
            ],
            SPN: [
              'F#3',
              'Gb3'
            ]
          },
          4 => {
            NOTE: 'D',
            SPN: 'D3'
          },
          5 => {
            NOTE: 'A',
            SPN: 'A2'
          },
          6 => {
            NOTE: 'D',
            SPN: 'D2'
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
