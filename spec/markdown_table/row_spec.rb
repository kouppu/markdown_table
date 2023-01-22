# frozen_string_literal: true

require 'spec_helper'

RSpec.describe MarkdownTable::Row do
  describe '#generate' do
    subject(:actual) { described_class.new(fields: %w[row1 row2 row3 row4]).generate }

    let!(:expected) { "|row1|row2|row3|row4|\n" }

    it 'return Markdown table row' do
      expect(actual).to eq expected
    end
  end
end
