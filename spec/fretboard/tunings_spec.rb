# frozen_string_literal: true

RSpec.describe Fretboard::Tunings do
  describe ".list" do
    subject(:list) { described_class.list }

    it { is_expected.to be_a(Hash) }
    it { is_expected.to be_frozen }
    it { expect(list.size).to eq(27) }

    it "has :STRINGS key for each tuning", :aggregate_failures do
      list.each_value do |tuning_data|
        expect(tuning_data).to have_key(:STRINGS)
      end
    end

    it "has strings 1 through 6 for each tuning", :aggregate_failures do
      list.each_value do |tuning_data|
        expect(tuning_data[:STRINGS].keys).to eq([1, 2, 3, 4, 5, 6])
      end
    end

    it "has :NOTE for each string", :aggregate_failures do
      list.each_value do |tuning_data|
        tuning_data[:STRINGS].each_value do |string_data|
          expect(string_data).to have_key(:NOTE)
        end
      end
    end
  end

  describe ".fetch" do
    subject(:fetched) { described_class.fetch(tuning_name) }

    context "with valid tuning" do
      context "when lowercase symbol" do
        let(:tuning_name) { :standard }

        it { is_expected.to be_a(Hash) }
        it { is_expected.to have_key(:STRINGS) }
      end

      context "when uppercase symbol" do
        let(:tuning_name) { :STANDARD }

        it { is_expected.to be_a(Hash) }
        it { is_expected.to have_key(:STRINGS) }
      end

      context "when string" do
        let(:tuning_name) { "standard" }

        it { is_expected.to be_a(Hash) }
        it { is_expected.to have_key(:STRINGS) }
      end

      context "when :standard" do
        let(:tuning_name) { :standard }

        it "returns correct notes", :aggregate_failures do
          strings = fetched[:STRINGS]

          expect(strings[1][:NOTE]).to eq("E")
          expect(strings[2][:NOTE]).to eq("B")
          expect(strings[3][:NOTE]).to eq("G")
          expect(strings[4][:NOTE]).to eq("D")
          expect(strings[5][:NOTE]).to eq("A")
          expect(strings[6][:NOTE]).to eq("E")
        end
      end
    end

    context "with invalid tuning" do
      let(:tuning_name) { :nonexistent }

      it { is_expected.to be_nil }
    end
  end

  describe ".exists?" do
    subject(:exists) { described_class.exists?(tuning_name) }

    context "with valid tuning" do
      let(:tuning_name) { :standard }

      it { is_expected.to be true }
    end

    context "with invalid tuning" do
      let(:tuning_name) { :nonexistent }

      it { is_expected.to be false }
    end

    context "when lowercase symbol" do
      let(:tuning_name) { :drop_d }

      it { is_expected.to be true }
    end

    context "when uppercase symbol" do
      let(:tuning_name) { :DROP_D }

      it { is_expected.to be true }
    end

    context "when string" do
      let(:tuning_name) { "drop_d" }

      it { is_expected.to be true }
    end
  end

  describe ".draw_list" do
    subject(:draw_list) { described_class.draw_list }

    before { allow(Fretboard::Console).to receive(:print_table) }

    it { is_expected.to be_nil }

    it "calls Console.print_table once" do
      draw_list

      expect(Fretboard::Console).to have_received(:print_table).once
    end

    it "passes correct headings" do
      draw_list

      expect(Fretboard::Console).to have_received(:print_table).with(%w[Tuning Notes], anything)
    end

    it "passes 27 rows" do
      draw_list

      expect(Fretboard::Console).to have_received(:print_table).with(anything, having_attributes(size: 27))
    end

    it "formats enharmonic notes with '/'" do
      draw_list

      expect(Fretboard::Console).to have_received(:print_table).with(
        anything,
        include(include(match(%r{/})))
      )
    end
  end

  describe "TUNINGS constant" do
    it "is private" do
      expect { described_class::TUNINGS }.to raise_error(NameError)
    end
  end
end
