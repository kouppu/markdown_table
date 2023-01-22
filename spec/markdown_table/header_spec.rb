# frozen_string_literal: true

require 'spec_helper'

RSpec.describe MarkdownTable::Header do
  describe '#generate' do
    subject(:actual) { described_class.new(header: %w[header1 header2 header3 header4]).generate }

    let!(:expected) { "|header1|header2|header3|header4|\n" }

    it 'return Markdown table header' do
      expect(actual).to eq expected
    end
  end
end
