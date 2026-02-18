# frozen_string_literal: true

require "fretboard/exceptions/base"

module Fretboard
  module Exceptions
    class NotBuilt < Base
      def initialize(msg = nil)
        super(msg || "Build the guitar fretboard data for drawing")
      end
    end
  end
end
