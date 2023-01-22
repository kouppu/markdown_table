# frozen_string_literal: true

require 'spec_helper'

RSpec.describe MarkdownTable do
  it 'has a version number' do
    expect(MarkdownTable::VERSION).not_to be nil
  end

  describe '#generate' do
    subject(:actual) do
      described_class.generate(header: %w[header1 header2 header3 header4]) do |table|
        table << %w[row1_1 row1_2 row1_3 row1_4]
        table << %w[row2_1 row2_2 row3_3 row4_4]
      end
    end

    let!(:expected) do
      <<~MARKDOWN
        |header1|header2|header3|header4|
        |-|-|-|-|
        |row1_1|row1_2|row1_3|row1_4|
        |row2_1|row2_2|row3_3|row4_4|
      MARKDOWN
    end

    it 'return Markdown table' do
      expect(actual).to eq expected
    end
  end
end
