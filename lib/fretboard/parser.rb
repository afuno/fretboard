require 'optparse'

require 'fretboard/console'

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

    def parser
      OptionParser.new do |opts|
        opts.banner = 'Usage: fretboard [options]'

        opts.on('-v', '--version', 'The current version of the gem') do
          Fretboard::Console.log(Fretboard::VERSION)
          exit
        end

        opts.on('-h', '--help', 'Prints this help') do
          Fretboard::Console.log(opts.to_s)
          exit
        end
      end
    end
  end
end
