module Fretboard
  class Notes
    # Fretboard::Notes.all

    BASIS_NOTES = {
      1 => 'C',
      2 => [
        'C sharp',
        'D flat'
      ],
      3 => 'D',
      4 => [
        'D sharp',
        'E flat'
      ],
      5 => 'E',
      6 => 'F',
      7 => [
        'F sharp',
        'D flat'
      ],
      8 => 'G',
      9 => [
        'G sharp',
        'A flat'
      ],
      10 => 'A',
      11 => [
        'A sharp',
        'B flat'
      ],
      12 => 'B'
    }.freeze

    def self.all(sharp_or_flat = :sharp)
      BASIS_NOTES.map do |_key, value|
        if value.is_a?(Array)
          if sharp_or_flat == :sharp
            value.first
          else
            value.last
          end
        else
          value
        end
      end
    end

    def self.first
      all.first
    end
  end
end
