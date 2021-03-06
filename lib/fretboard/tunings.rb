# frozen_string_literal: true

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

      TUNING_A: {
        STRINGS: {
          1 => {
            NOTE: 'A'
          },
          2 => {
            NOTE: 'E'
          },
          3 => {
            NOTE: 'C'
          },
          4 => {
            NOTE: 'G'
          },
          5 => {
            NOTE: 'D'
          },
          6 => {
            NOTE: 'A'
          }
        }
      },

      OPEN_A: {
        STRINGS: {
          1 => {
            NOTE: 'E'
          },
          2 => {
            NOTE: 'A'
          },
          3 => {
            NOTE: 'E'
          },
          4 => {
            NOTE: [
              'C#',
              'Db'
            ]
          },
          5 => {
            NOTE: 'A'
          },
          6 => {
            NOTE: 'E'
          }
        }
      },

      DROP_A: {
        STRINGS: {
          1 => {
            NOTE: 'B'
          },
          2 => {
            NOTE: [
              'F#',
              'Gb'
            ]
          },
          3 => {
            NOTE: 'D'
          },
          4 => {
            NOTE: 'A'
          },
          5 => {
            NOTE: 'E'
          },
          6 => {
            NOTE: 'A'
          }
        }
      },

      DROP_A_SHARP: {
        STRINGS: {
          1 => {
            NOTE: 'C'
          },
          2 => {
            NOTE: 'G'
          },
          3 => {
            NOTE: [
              'D#',
              'Eb'
            ]
          },
          4 => {
            NOTE: [
              'A#',
              'Bb'
            ]
          },
          5 => {
            NOTE: 'F'
          },
          6 => {
            NOTE: [
              'A#',
              'Bb'
            ]
          }
        }
      },

      DROP_A_FLAT: {
        STRINGS: {
          1 => {
            NOTE: [
              'A#',
              'Bb'
            ]
          },
          2 => {
            NOTE: 'F'
          },
          3 => {
            NOTE: [
              'C#',
              'Db'
            ]
          },
          4 => {
            NOTE: [
              'G#',
              'Ab'
            ]
          },
          5 => {
            NOTE: [
              'D#',
              'Eb'
            ]
          },
          6 => {
            NOTE: [
              'G#',
              'Ab'
            ]
          }
        }
      },

      TUNING_B: {
        STRINGS: {
          1 => {
            NOTE: 'B'
          },
          2 => {
            NOTE: [
              'F#',
              'Gb'
            ]
          },
          3 => {
            NOTE: 'D'
          },
          4 => {
            NOTE: 'A'
          },
          5 => {
            NOTE: 'E'
          },
          6 => {
            NOTE: 'B'
          }
        }
      },

      OPEN_B: {
        STRINGS: {
          1 => {
            NOTE: [
              'D#',
              'Eb'
            ]
          },
          2 => {
            NOTE: 'B'
          },
          3 => {
            NOTE: [
              'F#',
              'Gb'
            ]
          },
          4 => {
            NOTE: 'B'
          },
          5 => {
            NOTE: [
              'F#',
              'Gb'
            ]
          },
          6 => {
            NOTE: 'B'
          }
        }
      },

      DROP_B: {
        STRINGS: {
          1 => {
            NOTE: [
              'C#',
              'Db'
            ]
          },
          2 => {
            NOTE: [
              'G#',
              'Ab'
            ]
          },
          3 => {
            NOTE: 'E'
          },
          4 => {
            NOTE: 'B'
          },
          5 => {
            NOTE: [
              'F#',
              'Gb'
            ]
          },
          6 => {
            NOTE: 'B'
          }
        }
      },

      DROP_B_FLAT: {
        STRINGS: {
          1 => {
            NOTE: 'C'
          },
          2 => {
            NOTE: 'G'
          },
          3 => {
            NOTE: [
              'D#',
              'Eb'
            ]
          },
          4 => {
            NOTE: [
              'A#',
              'Bb'
            ]
          },
          5 => {
            NOTE: 'F'
          },
          6 => {
            NOTE: [
              'A#',
              'Bb'
            ]
          }
        }
      },

      TUNING_C: {
        STRINGS: {
          1 => {
            NOTE: 'C'
          },
          2 => {
            NOTE: 'G'
          },
          3 => {
            NOTE: [
              'D#',
              'Eb'
            ]
          },
          4 => {
            NOTE: [
              'A#',
              'Bb'
            ]
          },
          5 => {
            NOTE: 'F'
          },
          6 => {
            NOTE: 'C'
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

      TUNING_D: {
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
            NOTE: 'D'
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

      OPEN_D_MINOR: {
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

      MODAL_D: {
        STRINGS: {
          1 => {
            NOTE: 'D'
          },
          2 => {
            NOTE: 'A'
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

      OPEN_E: {
        STRINGS: {
          1 => {
            NOTE: 'E'
          },
          2 => {
            NOTE: 'B'
          },
          3 => {
            NOTE: [
              'G#',
              'Ab'
            ]
          },
          4 => {
            NOTE: 'E'
          },
          5 => {
            NOTE: 'B'
          },
          6 => {
            NOTE: 'E'
          }
        }
      },

      TUNING_F: {
        STRINGS: {
          1 => {
            NOTE: 'F'
          },
          2 => {
            NOTE: 'C'
          },
          3 => {
            NOTE: [
              'G#',
              'Ab'
            ]
          },
          4 => {
            NOTE: [
              'D#',
              'Eb'
            ]
          },
          5 => {
            NOTE: [
              'A#',
              'Bb'
            ]
          },
          6 => {
            NOTE: 'F'
          }
        }
      },

      TUNING_G: {
        STRINGS: {
          1 => {
            NOTE: 'G'
          },
          2 => {
            NOTE: 'D'
          },
          3 => {
            NOTE: [
              'A#',
              'Bb'
            ]
          },
          4 => {
            NOTE: 'F'
          },
          5 => {
            NOTE: 'C'
          },
          6 => {
            NOTE: 'G'
          }
        }
      },

      OPEN_F: {
        STRINGS: {
          1 => {
            NOTE: 'F'
          },
          2 => {
            NOTE: 'C'
          },
          3 => {
            NOTE: 'F'
          },
          4 => {
            NOTE: 'C'
          },
          5 => {
            NOTE: 'A'
          },
          6 => {
            NOTE: 'F'
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
      },

      OPEN_G_MINOR: {
        STRINGS: {
          1 => {
            NOTE: 'D'
          },
          2 => {
            NOTE: [
              'A#',
              'Bb'
            ]
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
      },

      DROP_G_SHARP: {
        STRINGS: {
          1 => {
            NOTE: [
              'A#',
              'Bb'
            ]
          },
          2 => {
            NOTE: 'F'
          },
          3 => {
            NOTE: [
              'C#',
              'Db'
            ]
          },
          4 => {
            NOTE: [
              'G#',
              'Ab'
            ]
          },
          5 => {
            NOTE: [
              'D#',
              'Eb'
            ]
          },
          6 => {
            NOTE: [
              'G#',
              'Ab'
            ]
          }
        }
      },

      MODAL_G: {
        STRINGS: {
          1 => {
            NOTE: 'D'
          },
          2 => {
            NOTE: 'C'
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
