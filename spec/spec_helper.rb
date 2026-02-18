# frozen_string_literal: true

require "active_support/core_ext/object/blank"
require "active_support/core_ext/hash/except"

require "fretboard/exceptions/base"
require "fretboard/exceptions/unknown_tuning"
require "fretboard/exceptions/unknown_note"
require "fretboard/exceptions/not_built"

require "fretboard/note_formatter"
require "fretboard/builder"
require "fretboard/console"
require "fretboard/note"
require "fretboard/tunings"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect

    # Configures the maximum character length that RSpec will print while
    # formatting an object. You can set length to nil to prevent RSpec from
    # doing truncation.
    c.max_formatted_output_length = nil
  end
end
