require 'fretboard/notes'

module Fretboard
  class Note
    # Fretboard::Note.next_for('C')

    def self.next_for(note, sharp_or_flat: :sharp, formated: false)
      all_notes = Fretboard::Notes.all(
        sharp_or_flat,
        formated: formated
      )

      current_index = all_notes.find_index(note)
      next_index = current_index + 1

      next_note = all_notes[next_index]
      next_note = all_notes.first if next_note.blank?

      next_note
    end

    def self.formated(note)
      new(note).formated
    end

    def initialize(note)
      @note = note
    end

    def formated
      result = @note

      if result.include?('sharp')
        result = result.gsub('sharp', '#')
      end

      if result.include?('flat')
        result = result.gsub('flat', 'b') # ♭
      end

      result.gsub(' ', '')
    end
  end
end
