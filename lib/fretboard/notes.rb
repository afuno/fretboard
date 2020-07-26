module Fretboard
  class Notes
    # Fretboard::Notes.all(:both)
    # Fretboard::Notes.all(:#)
    # Fretboard::Notes.all(:b)

    BASIS_NOTES = {
      1 => 'C',
      2 => [
        'C#',
        'Db'
      ],
      3 => 'D',
      4 => [
        'D#',
        'Eb'
      ],
      5 => 'E',
      6 => 'F',
      7 => [
        'F#',
        'Gb'
      ],
      8 => 'G',
      9 => [
        'G#',
        'Ab'
      ],
      10 => 'A',
      11 => [
        'A#',
        'Bb'
      ],
      12 => 'B'
    }.freeze

    def self.all(sharp_or_flat = :sharp)
      BASIS_NOTES.map do |_key, value|
        result = value

        if value.is_a?(Array)
          result = if sharp_or_flat == :both
                     value.join('/')
                   elsif sharp_or_flat == :sharp
                     value.first
                   else
                     value.last
                   end
        end

        result
      end
    end

    def self.first
      all.first
    end
  end
end
