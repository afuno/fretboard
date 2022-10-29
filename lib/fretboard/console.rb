# frozen_string_literal: true

require 'colorize'
require 'terminal-table'

module Fretboard
  class Console # rubocop:disable Style/Documentation
    def self.log(text)
      new(text, nil).print
    end

    # def self.success(text)
    #   new(text, :green).print
    # end

    # def self.warning(text)
    #   new(text, :yellow).print
    # end

    def self.danger(text)
      new(text, :red).print
    end

    def self.print_table(headings, rows)
      table = Terminal::Table.new(
        headings:,
        rows:,
        style: { border_x: '~', border_i: '~' }
      )

      new(table.to_s, nil).print
    end

    def initialize(text, color = nil)
      @text = text
      @color = color
    end

    def print
      puts @text.colorize(@color)
    end
  end
end
