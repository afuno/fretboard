# frozen_string_literal: true

require "fretboard/exceptions/base"

module Fretboard
  module Exceptions
    class UnknownNote < Base
      def initialize(note = nil)
        message = "Unknown note"
        message = "#{message}: #{note}" if note
        super(message)
      end
    end
  end
end
