require 'fretboard/notes'

module Fretboard
  class Note
    # Fretboard::Note.next_for('C')

    def self.next_for(note)
      all_notes = Fretboard::Notes.all

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
      if @note.include?('sharp')
        return @note.sub('sharp', '#').sub(' ', '')
      elsif @note.include?('sharp')
        return @note.sub('flat', '♭').sub(' ', '')
      end

      @note
    end
  end
end
