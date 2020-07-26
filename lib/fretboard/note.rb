require 'fretboard/notes'

module Fretboard
  class Note
    # Fretboard::Note.next_for('C')
    # Fretboard::Note.next_for(['F#', 'Gb'])
    # Fretboard::Note.next_for('F#/Gb')

    def self.next_for(note, sharp_or_flat: :both)
      all_notes = Fretboard::Notes.all(
        sharp_or_flat
      )

      if note.is_a?(Array)
        note = if sharp_or_flat == :both
                   note.join('/')
                 elsif sharp_or_flat == :sharp
                   note.first
                 else
                   note.last
                 end
      end

      current_index = all_notes.find_index(note)
      next_index = current_index + 1

      next_note = all_notes[next_index]
      next_note = all_notes.first if next_note.blank?

      next_note
    end

    def initialize(note)
      @note = note
    end
  end
end
