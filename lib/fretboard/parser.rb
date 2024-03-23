# frozen_string_literal: true

require "active_support/core_ext/object/blank"
require "active_support/core_ext/hash/except"

require "optparse"

require "fretboard/builder"
require "fretboard/console"
require "fretboard/note"
require "fretboard/tunings"

module Fretboard
  class Parser
    attr_reader :args

    def self.parse(args)
      new(args).parse
    end

    def initialize(args)
      @args = args
    end

    def parse
      parser.parse!(args)
    rescue StandardError => e
      Fretboard::Console.danger("Ambiguously completable string is encountered\n#{e}")
    end

    private

    def parser # rubocop:disable Metrics/MethodLength
      OptionParser.new do |opts|
        opts.banner = "Usage: fretboard [options]"

        opts.on("-v", "--version", "The current version of the gem") do
          Fretboard::Console.log(Fretboard::VERSION)
          exit
        end

        opts.on("-h", "--help", "Prints this help") do
          Fretboard::Console.log(opts.to_s)
          exit
        end

        opts.on("-d", "--draw-tuning CODE", "Build a guitar tuning") do |code|
          fretboard = Fretboard::Builder.new(code.to_sym)
          fretboard.build
          fretboard.draw
        end

        opts.on("-l", "--tunings-list", "List of supported guitar tunings") do
          Fretboard::Tunings.draw_list
        end
      end
    end
  end
end
