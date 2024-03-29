# frozen_string_literal: true

RSpec.describe Fretboard::Builder do
  shared_examples_for "returns expected data" do |tuning:, data:|
    it "returns expected data", :aggregate_failures do
      result = described_class.new(tuning)

      expect(result.data).to eq({})

      result.build

      expect(result.data).to eq(data)
    end
  end

  shared_examples_for "returns expected draw" do |tuning:, data:|
    it "returns expected data", :aggregate_failures do
      result = described_class.new(tuning)

      result.build
      result.draw

      expect(Fretboard::Console).to(
        have_received(:print_table).with(*data).once
      )
    end
  end

  before { allow(Fretboard::Console).to receive(:print_table).and_call_original }

  context "when tuning is `standard`" do
    include_examples "returns expected data", tuning: :standard, data: {
      1 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      2 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      3 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      4 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      5 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      6 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" }
    }

    include_examples "returns expected draw", tuning: :standard, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [2, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [3, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [4, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [5, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [6, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"]
      ]
    ]
  end

  context "when tuning is `tuning_a`" do
    include_examples "returns expected data", tuning: :tuning_a, data: {
      1 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      2 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      3 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      4 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      5 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      6 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" }
    }

    include_examples "returns expected draw", tuning: :tuning_a, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [2, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [3, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [4, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [5, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [6, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"]
      ]
    ]
  end

  context "when tuning is `open_a`" do
    include_examples "returns expected data", tuning: :open_a, data: {
      1 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      2 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      3 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      4 => { 0 => ["C#", "Db"], 1 => "D", 2 => "D#/Eb", 3 => "E", 4 => "F", 5 => "F#/Gb", 6 => "G",
             7 => "G#/Ab", 8 => "A", 9 => "A#/Bb", 10 => "B", 11 => "C", 12 => "C#/Db" },
      5 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      6 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" }
    }

    include_examples "returns expected draw", tuning: :open_a, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [2, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [3, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [4, "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db"],
        [5, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [6, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"]
      ]
    ]
  end

  context "when tuning is `drop_a`" do
    include_examples "returns expected data", tuning: :drop_a, data: {
      1 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      2 => { 0 => ["F#", "Gb"], 1 => "G", 2 => "G#/Ab", 3 => "A", 4 => "A#/Bb", 5 => "B", 6 => "C",
             7 => "C#/Db", 8 => "D", 9 => "D#/Eb", 10 => "E", 11 => "F", 12 => "F#/Gb" },
      3 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      4 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      5 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      6 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" }
    }

    include_examples "returns expected draw", tuning: :drop_a, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [2, "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb"],
        [3, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [4, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [5, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [6, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"]
      ]
    ]
  end

  context "when tuning is `drop_a_sharp`" do
    include_examples "returns expected data", tuning: :drop_a_sharp, data: {
      1 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      2 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      3 => { 0 => ["D#", "Eb"], 1 => "E", 2 => "F", 3 => "F#/Gb", 4 => "G", 5 => "G#/Ab", 6 => "A",
             7 => "A#/Bb", 8 => "B", 9 => "C", 10 => "C#/Db", 11 => "D", 12 => "D#/Eb" },
      4 => { 0 => ["A#", "Bb"], 1 => "B", 2 => "C", 3 => "C#/Db", 4 => "D", 5 => "D#/Eb", 6 => "E",
             7 => "F", 8 => "F#/Gb", 9 => "G", 10 => "G#/Ab", 11 => "A", 12 => "A#/Bb" },
      5 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      6 => { 0 => ["A#", "Bb"], 1 => "B", 2 => "C", 3 => "C#/Db", 4 => "D", 5 => "D#/Eb", 6 => "E",
             7 => "F", 8 => "F#/Gb", 9 => "G", 10 => "G#/Ab", 11 => "A", 12 => "A#/Bb" }
    }

    include_examples "returns expected draw", tuning: :drop_a_sharp, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [2, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [3, "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb"],
        [4, "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb"],
        [5, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [6, "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb"]
      ]
    ]
  end

  context "when tuning is `drop_a_flat`" do
    include_examples "returns expected data", tuning: :drop_a_flat, data: {
      1 => { 0 => ["A#", "Bb"], 1 => "B", 2 => "C", 3 => "C#/Db", 4 => "D", 5 => "D#/Eb", 6 => "E",
             7 => "F", 8 => "F#/Gb", 9 => "G", 10 => "G#/Ab", 11 => "A", 12 => "A#/Bb" },
      2 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      3 => { 0 => ["C#", "Db"], 1 => "D", 2 => "D#/Eb", 3 => "E", 4 => "F", 5 => "F#/Gb", 6 => "G",
             7 => "G#/Ab", 8 => "A", 9 => "A#/Bb", 10 => "B", 11 => "C", 12 => "C#/Db" },
      4 => { 0 => ["G#", "Ab"], 1 => "A", 2 => "A#/Bb", 3 => "B", 4 => "C", 5 => "C#/Db", 6 => "D",
             7 => "D#/Eb", 8 => "E", 9 => "F", 10 => "F#/Gb", 11 => "G", 12 => "G#/Ab" },
      5 => { 0 => ["D#", "Eb"], 1 => "E", 2 => "F", 3 => "F#/Gb", 4 => "G", 5 => "G#/Ab", 6 => "A",
             7 => "A#/Bb", 8 => "B", 9 => "C", 10 => "C#/Db", 11 => "D", 12 => "D#/Eb" },
      6 => { 0 => ["G#", "Ab"], 1 => "A", 2 => "A#/Bb", 3 => "B", 4 => "C", 5 => "C#/Db", 6 => "D",
             7 => "D#/Eb", 8 => "E", 9 => "F", 10 => "F#/Gb", 11 => "G", 12 => "G#/Ab" }
    }

    include_examples "returns expected draw", tuning: :drop_a_flat, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb"],
        [2, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [3, "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db"],
        [4, "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab"],
        [5, "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb"],
        [6, "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab"]
      ]
    ]
  end

  context "when tuning is `tuning_b`" do
    include_examples "returns expected data", tuning: :tuning_b, data: {
      1 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      2 => { 0 => ["F#", "Gb"], 1 => "G", 2 => "G#/Ab", 3 => "A", 4 => "A#/Bb", 5 => "B", 6 => "C",
             7 => "C#/Db", 8 => "D", 9 => "D#/Eb", 10 => "E", 11 => "F", 12 => "F#/Gb" },
      3 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      4 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      5 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      6 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" }
    }

    include_examples "returns expected draw", tuning: :tuning_b, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [2, "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb"],
        [3, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [4, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [5, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [6, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"]
      ]
    ]
  end

  context "when tuning is `open_b`" do
    include_examples "returns expected data", tuning: :open_b, data: {
      1 => { 0 => ["D#", "Eb"], 1 => "E", 2 => "F", 3 => "F#/Gb", 4 => "G", 5 => "G#/Ab", 6 => "A",
             7 => "A#/Bb", 8 => "B", 9 => "C", 10 => "C#/Db", 11 => "D", 12 => "D#/Eb" },
      2 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      3 => { 0 => ["F#", "Gb"], 1 => "G", 2 => "G#/Ab", 3 => "A", 4 => "A#/Bb", 5 => "B", 6 => "C",
             7 => "C#/Db", 8 => "D", 9 => "D#/Eb", 10 => "E", 11 => "F", 12 => "F#/Gb" },
      4 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      5 => { 0 => ["F#", "Gb"], 1 => "G", 2 => "G#/Ab", 3 => "A", 4 => "A#/Bb", 5 => "B", 6 => "C",
             7 => "C#/Db", 8 => "D", 9 => "D#/Eb", 10 => "E", 11 => "F", 12 => "F#/Gb" },
      6 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" }
    }

    include_examples "returns expected draw", tuning: :open_b, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb"],
        [2, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [3, "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb"],
        [4, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [5, "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb"],
        [6, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"]
      ]
    ]
  end

  context "when tuning is `drop_b`" do
    include_examples "returns expected data", tuning: :drop_b, data: {
      1 => { 0 => ["C#", "Db"], 1 => "D", 2 => "D#/Eb", 3 => "E", 4 => "F", 5 => "F#/Gb", 6 => "G",
             7 => "G#/Ab", 8 => "A", 9 => "A#/Bb", 10 => "B", 11 => "C", 12 => "C#/Db" },
      2 => { 0 => ["G#", "Ab"], 1 => "A", 2 => "A#/Bb", 3 => "B", 4 => "C", 5 => "C#/Db", 6 => "D",
             7 => "D#/Eb", 8 => "E", 9 => "F", 10 => "F#/Gb", 11 => "G", 12 => "G#/Ab" },
      3 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      4 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      5 => { 0 => ["F#", "Gb"], 1 => "G", 2 => "G#/Ab", 3 => "A", 4 => "A#/Bb", 5 => "B", 6 => "C",
             7 => "C#/Db", 8 => "D", 9 => "D#/Eb", 10 => "E", 11 => "F", 12 => "F#/Gb" },
      6 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" }
    }

    include_examples "returns expected draw", tuning: :drop_b, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db"],
        [2, "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab"],
        [3, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [4, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [5, "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb"],
        [6, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"]
      ]
    ]
  end

  context "when tuning is `drop_b_flat`" do
    include_examples "returns expected data", tuning: :drop_b_flat, data: {
      1 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      2 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      3 => { 0 => ["D#", "Eb"], 1 => "E", 2 => "F", 3 => "F#/Gb", 4 => "G", 5 => "G#/Ab", 6 => "A",
             7 => "A#/Bb", 8 => "B", 9 => "C", 10 => "C#/Db", 11 => "D", 12 => "D#/Eb" },
      4 => { 0 => ["A#", "Bb"], 1 => "B", 2 => "C", 3 => "C#/Db", 4 => "D", 5 => "D#/Eb", 6 => "E",
             7 => "F", 8 => "F#/Gb", 9 => "G", 10 => "G#/Ab", 11 => "A", 12 => "A#/Bb" },
      5 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      6 => { 0 => ["A#", "Bb"], 1 => "B", 2 => "C", 3 => "C#/Db", 4 => "D", 5 => "D#/Eb", 6 => "E",
             7 => "F", 8 => "F#/Gb", 9 => "G", 10 => "G#/Ab", 11 => "A", 12 => "A#/Bb" }
    }

    include_examples "returns expected draw", tuning: :drop_b_flat, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [2, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [3, "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb"],
        [4, "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb"],
        [5, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [6, "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb"]
      ]
    ]
  end

  context "when tuning is `tuning_c`" do
    include_examples "returns expected data", tuning: :tuning_c, data: {
      1 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      2 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      3 => { 0 => ["D#", "Eb"], 1 => "E", 2 => "F", 3 => "F#/Gb", 4 => "G", 5 => "G#/Ab", 6 => "A",
             7 => "A#/Bb", 8 => "B", 9 => "C", 10 => "C#/Db", 11 => "D", 12 => "D#/Eb" },
      4 => { 0 => ["A#", "Bb"], 1 => "B", 2 => "C", 3 => "C#/Db", 4 => "D", 5 => "D#/Eb", 6 => "E",
             7 => "F", 8 => "F#/Gb", 9 => "G", 10 => "G#/Ab", 11 => "A", 12 => "A#/Bb" },
      5 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      6 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" }
    }

    include_examples "returns expected draw", tuning: :tuning_c, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [2, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [3, "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb"],
        [4, "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb"],
        [5, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [6, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"]
      ]
    ]
  end

  context "when tuning is `open_c`" do
    include_examples "returns expected data", tuning: :open_c, data: {
      1 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      2 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      3 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      4 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      5 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      6 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" }
    }

    include_examples "returns expected draw", tuning: :open_c, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [2, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [3, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [4, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [5, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [6, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"]
      ]
    ]
  end

  context "when tuning is `drop_c`" do
    include_examples "returns expected data", tuning: :drop_c, data: {
      1 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      2 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      3 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      4 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      5 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      6 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" }
    }

    include_examples "returns expected draw", tuning: :drop_c, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [2, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [3, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [4, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [5, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [6, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"]
      ]
    ]
  end

  context "when tuning is `tuning_d`" do
    include_examples "returns expected data", tuning: :tuning_d, data: {
      1 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      2 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      3 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      4 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      5 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      6 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" }
    }

    include_examples "returns expected draw", tuning: :tuning_d, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [2, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [3, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [4, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [5, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [6, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"]
      ]
    ]
  end

  context "when tuning is `open_d`" do
    include_examples "returns expected data", tuning: :open_d, data: {
      1 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      2 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      3 => { 0 => ["F#", "Gb"], 1 => "G", 2 => "G#/Ab", 3 => "A", 4 => "A#/Bb", 5 => "B", 6 => "C",
             7 => "C#/Db", 8 => "D", 9 => "D#/Eb", 10 => "E", 11 => "F", 12 => "F#/Gb" },
      4 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      5 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      6 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" }
    }

    include_examples "returns expected draw", tuning: :open_d, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [2, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [3, "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb"],
        [4, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [5, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [6, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"]
      ]
    ]
  end

  context "when tuning is `open_d_minor`" do
    include_examples "returns expected data", tuning: :open_d_minor, data: {
      1 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      2 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      3 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      4 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      5 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      6 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" }
    }

    include_examples "returns expected draw", tuning: :open_d_minor, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [2, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [3, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [4, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [5, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [6, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"]
      ]
    ]
  end

  context "when tuning is `drop_d`" do
    include_examples "returns expected data", tuning: :drop_d, data: {
      1 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      2 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      3 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      4 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      5 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      6 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" }
    }

    include_examples "returns expected draw", tuning: :drop_d, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [2, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [3, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [4, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [5, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [6, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"]
      ]
    ]
  end

  context "when tuning is `double_drop_d`" do
    include_examples "returns expected data", tuning: :double_drop_d, data: {
      1 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      2 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      3 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      4 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      5 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      6 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" }
    }

    include_examples "returns expected draw", tuning: :double_drop_d, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [2, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [3, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [4, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [5, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [6, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"]
      ]
    ]
  end

  context "when tuning is `modal_d`" do
    include_examples "returns expected data", tuning: :modal_d, data: {
      1 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      2 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      3 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      4 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      5 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      6 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" }
    }

    include_examples "returns expected draw", tuning: :modal_d, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [2, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [3, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [4, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [5, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [6, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"]
      ]
    ]
  end

  context "when tuning is `open_e`" do
    include_examples "returns expected data", tuning: :open_e, data: {
      1 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      2 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      3 => { 0 => ["G#", "Ab"], 1 => "A", 2 => "A#/Bb", 3 => "B", 4 => "C", 5 => "C#/Db", 6 => "D",
             7 => "D#/Eb", 8 => "E", 9 => "F", 10 => "F#/Gb", 11 => "G", 12 => "G#/Ab" },
      4 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" },
      5 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      6 => { 0 => "E", 1 => "F", 2 => "F#/Gb", 3 => "G", 4 => "G#/Ab", 5 => "A", 6 => "A#/Bb",
             7 => "B", 8 => "C", 9 => "C#/Db", 10 => "D", 11 => "D#/Eb", 12 => "E" }
    }

    include_examples "returns expected draw", tuning: :open_e, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [2, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [3, "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab"],
        [4, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"],
        [5, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [6, "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E"]
      ]
    ]
  end

  context "when tuning is `tuning_f`" do
    include_examples "returns expected data", tuning: :tuning_f, data: {
      1 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      2 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      3 => { 0 => ["G#", "Ab"], 1 => "A", 2 => "A#/Bb", 3 => "B", 4 => "C", 5 => "C#/Db", 6 => "D",
             7 => "D#/Eb", 8 => "E", 9 => "F", 10 => "F#/Gb", 11 => "G", 12 => "G#/Ab" },
      4 => { 0 => ["D#", "Eb"], 1 => "E", 2 => "F", 3 => "F#/Gb", 4 => "G", 5 => "G#/Ab", 6 => "A",
             7 => "A#/Bb", 8 => "B", 9 => "C", 10 => "C#/Db", 11 => "D", 12 => "D#/Eb" },
      5 => { 0 => ["A#", "Bb"], 1 => "B", 2 => "C", 3 => "C#/Db", 4 => "D", 5 => "D#/Eb", 6 => "E",
             7 => "F", 8 => "F#/Gb", 9 => "G", 10 => "G#/Ab", 11 => "A", 12 => "A#/Bb" },
      6 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" }
    }

    include_examples "returns expected draw", tuning: :tuning_f, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [2, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [3, "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab"],
        [4, "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb"],
        [5, "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb"],
        [6, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"]
      ]
    ]
  end

  context "when tuning is `open_f`" do
    include_examples "returns expected data", tuning: :open_f, data: {
      1 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      2 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      3 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      4 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      5 => { 0 => "A", 1 => "A#/Bb", 2 => "B", 3 => "C", 4 => "C#/Db", 5 => "D", 6 => "D#/Eb",
             7 => "E", 8 => "F", 9 => "F#/Gb", 10 => "G", 11 => "G#/Ab", 12 => "A" },
      6 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" }
    }

    include_examples "returns expected draw", tuning: :open_f, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [2, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [3, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [4, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [5, "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A"],
        [6, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"]
      ]
    ]
  end

  context "when tuning is `tuning_g`" do
    include_examples "returns expected data", tuning: :tuning_g, data: {
      1 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      2 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      3 => { 0 => ["A#", "Bb"], 1 => "B", 2 => "C", 3 => "C#/Db", 4 => "D", 5 => "D#/Eb", 6 => "E",
             7 => "F", 8 => "F#/Gb", 9 => "G", 10 => "G#/Ab", 11 => "A", 12 => "A#/Bb" },
      4 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      5 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      6 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" }
    }

    include_examples "returns expected draw", tuning: :tuning_g, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [2, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [3, "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb"],
        [4, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [5, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [6, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"]
      ]
    ]
  end

  context "when tuning is `open_g`" do
    include_examples "returns expected data", tuning: :open_g, data: {
      1 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      2 => { 0 => "B", 1 => "C", 2 => "C#/Db", 3 => "D", 4 => "D#/Eb", 5 => "E", 6 => "F",
             7 => "F#/Gb", 8 => "G", 9 => "G#/Ab", 10 => "A", 11 => "A#/Bb", 12 => "B" },
      3 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      4 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      5 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      6 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" }
    }

    include_examples "returns expected draw", tuning: :open_g, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [2, "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B"],
        [3, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [4, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [5, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [6, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"]
      ]
    ]
  end

  context "when tuning is `open_g_minor`" do
    include_examples "returns expected data", tuning: :open_g_minor, data: {
      1 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      2 => { 0 => ["A#", "Bb"], 1 => "B", 2 => "C", 3 => "C#/Db", 4 => "D", 5 => "D#/Eb", 6 => "E",
             7 => "F", 8 => "F#/Gb", 9 => "G", 10 => "G#/Ab", 11 => "A", 12 => "A#/Bb" },
      3 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      4 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      5 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      6 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" }
    }

    include_examples "returns expected draw", tuning: :open_g_minor, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [2, "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb"],
        [3, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [4, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [5, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [6, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"]
      ]
    ]
  end

  context "when tuning is `drop_g_sharp`" do
    include_examples "returns expected data", tuning: :drop_g_sharp, data: {
      1 => { 0 => ["A#", "Bb"], 1 => "B", 2 => "C", 3 => "C#/Db", 4 => "D", 5 => "D#/Eb", 6 => "E",
             7 => "F", 8 => "F#/Gb", 9 => "G", 10 => "G#/Ab", 11 => "A", 12 => "A#/Bb" },
      2 => { 0 => "F", 1 => "F#/Gb", 2 => "G", 3 => "G#/Ab", 4 => "A", 5 => "A#/Bb", 6 => "B",
             7 => "C", 8 => "C#/Db", 9 => "D", 10 => "D#/Eb", 11 => "E", 12 => "F" },
      3 => { 0 => ["C#", "Db"], 1 => "D", 2 => "D#/Eb", 3 => "E", 4 => "F", 5 => "F#/Gb", 6 => "G",
             7 => "G#/Ab", 8 => "A", 9 => "A#/Bb", 10 => "B", 11 => "C", 12 => "C#/Db" },
      4 => { 0 => ["G#", "Ab"], 1 => "A", 2 => "A#/Bb", 3 => "B", 4 => "C", 5 => "C#/Db", 6 => "D",
             7 => "D#/Eb", 8 => "E", 9 => "F", 10 => "F#/Gb", 11 => "G", 12 => "G#/Ab" },
      5 => { 0 => ["D#", "Eb"], 1 => "E", 2 => "F", 3 => "F#/Gb", 4 => "G", 5 => "G#/Ab", 6 => "A",
             7 => "A#/Bb", 8 => "B", 9 => "C", 10 => "C#/Db", 11 => "D", 12 => "D#/Eb" },
      6 => { 0 => ["G#", "Ab"], 1 => "A", 2 => "A#/Bb", 3 => "B", 4 => "C", 5 => "C#/Db", 6 => "D",
             7 => "D#/Eb", 8 => "E", 9 => "F", 10 => "F#/Gb", 11 => "G", 12 => "G#/Ab" }
    }

    include_examples "returns expected draw", tuning: :drop_g_sharp, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb"],
        [2, "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F"],
        [3, "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db"],
        [4, "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab"],
        [5, "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb"],
        [6, "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab"]
      ]
    ]
  end

  context "when tuning is `modal_g`" do
    include_examples "returns expected data", tuning: :modal_g, data: {
      1 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      2 => { 0 => "C", 1 => "C#/Db", 2 => "D", 3 => "D#/Eb", 4 => "E", 5 => "F", 6 => "F#/Gb",
             7 => "G", 8 => "G#/Ab", 9 => "A", 10 => "A#/Bb", 11 => "B", 12 => "C" },
      3 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      4 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" },
      5 => { 0 => "G", 1 => "G#/Ab", 2 => "A", 3 => "A#/Bb", 4 => "B", 5 => "C", 6 => "C#/Db",
             7 => "D", 8 => "D#/Eb", 9 => "E", 10 => "F", 11 => "F#/Gb", 12 => "G" },
      6 => { 0 => "D", 1 => "D#/Eb", 2 => "E", 3 => "F", 4 => "F#/Gb", 5 => "G", 6 => "G#/Ab",
             7 => "A", 8 => "A#/Bb", 9 => "B", 10 => "C", 11 => "C#/Db", 12 => "D" }
    }

    include_examples "returns expected draw", tuning: :modal_g, data: [
      ["№", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      [
        [1, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [2, "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C"],
        [3, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [4, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"],
        [5, "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G"],
        [6, "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B", "C", "C#/Db", "D"]
      ]
    ]
  end
end
