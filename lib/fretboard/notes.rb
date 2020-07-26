module Fretboard
  class Notes
    # Fretboard::Notes.all(:both)
    # Fretboard::Notes.all(:sharp)
    # Fretboard::Notes.all(:flat)

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
        'G flat'
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

    def self.all(sharp_or_flat = :sharp, formated: false)
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

        if formated
          Fretboard::Note.formated(result)
        else
          result
        end
      end
    end

    def self.first
      all.first
    end
  end
end
