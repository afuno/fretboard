# frozen_string_literal: true

RSpec.describe Fretboard::NoteFormatter do
  describe ".format" do
    subject(:formatted_note) { described_class.format(note, sharp_or_flat:) }

    let(:sharp_or_flat) { :both }

    context "when note is a String" do
      let(:note) { "E" }

      context "when sharp_or_flat is :both" do
        let(:sharp_or_flat) { :both }

        it { is_expected.to eq("E") }
      end

      context "when sharp_or_flat is :sharp" do
        let(:sharp_or_flat) { :sharp }

        it { is_expected.to eq("E") }
      end

      context "when sharp_or_flat is :flat" do
        let(:sharp_or_flat) { :flat }

        it { is_expected.to eq("E") }
      end
    end

    context "when note is an Array" do
      let(:note) { %w[C# Db] }

      context "when sharp_or_flat is :both" do
        let(:sharp_or_flat) { :both }

        it { is_expected.to eq("C#/Db") }
      end

      context "when sharp_or_flat is :sharp" do
        let(:sharp_or_flat) { :sharp }

        it { is_expected.to eq("C#") }
      end

      context "when sharp_or_flat is :flat" do
        let(:sharp_or_flat) { :flat }

        it { is_expected.to eq("Db") }
      end
    end

    context "with default sharp_or_flat parameter" do
      subject(:formatted_note) { described_class.format(note) }

      context "when note is a String" do
        let(:note) { "G" }

        it { is_expected.to eq("G") }
      end

      context "when note is an Array" do
        let(:note) { %w[F# Gb] }

        it { is_expected.to eq("F#/Gb") }
      end
    end
  end
end
