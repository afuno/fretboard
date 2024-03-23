# frozen_string_literal: true

RSpec.describe Fretboard::VERSION do
  it { expect(Fretboard::VERSION::STRING).not_to be_nil }
end
