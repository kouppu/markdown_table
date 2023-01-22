# frozen_string_literal: true

require 'spec_helper'

RSpec.describe MarkdownTable::AlignRow do
  describe '#generate' do
    context 'when there is argument align' do
      subject(:actual) { described_class.new(size: 4, align:).generate }

      let!(:align) { %i[normal center left right] }
      let!(:expected) { "|-|:-:|:-|-:|\n" }

      it 'all align must be argument value' do
        expect(actual).to eq expected
      end
    end

    context 'when there is no argument align' do
      subject(:actual) { described_class.new(size: 4).generate }

      let!(:expected) { "|-|-|-|-|\n" }

      it 'all align must be normal' do
        expect(actual).to eq expected
      end
    end
  end
end
