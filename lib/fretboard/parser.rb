# frozen_string_literal: true

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
    rescue Fretboard::Exceptions::Base, OptionParser::ParseError => e
      Fretboard::Console.danger(e.message)
    rescue StandardError => e
      Fretboard::Console.danger("Unexpected error: #{e.message}")
    end

    private

    def parser # rubocop:disable Metrics/MethodLength
      OptionParser.new do |opts|
        opts.banner = "Usage: fretboard [options]"

        opts.on("-v", "--version", "The current version of the gem") do
          Fretboard::Console.log(Fretboard::VERSION::STRING)
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
