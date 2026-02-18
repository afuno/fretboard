# frozen_string_literal: true

require "fretboard/exceptions/base"

module Fretboard
  module Exceptions
    class UnknownTuning < Base
      def initialize(tuning_name = nil)
        message = "Unable to detect guitar tuning"
        message = "#{message}: #{tuning_name}" if tuning_name
        super(message)
      end
    end
  end
end
