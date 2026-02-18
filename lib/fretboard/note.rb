# frozen_string_literal: true

module Fretboard
  class Note
    def self.next_for(note, sharp_or_flat: :both)
      all_notes = Fretboard::Notes.all(sharp_or_flat)

      note = Fretboard::NoteFormatter.format(note, sharp_or_flat:)

      current_index = all_notes.find_index(note)
      raise Fretboard::Exceptions::UnknownNote, note if current_index.nil?

      next_index = current_index + 1

      next_note = all_notes[next_index]
      next_note = all_notes.first if next_note.nil?

      next_note
    end
  end
end
