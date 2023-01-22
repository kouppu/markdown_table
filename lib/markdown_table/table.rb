# frozen_string_literal: true

require_relative 'header'
require_relative 'align_row'
require_relative 'row'

module MarkdownTable
  class Table
    def initialize(header:, align:)
      @header = MarkdownTable::Header.new(header:)
      @align_row = MarkdownTable::AlignRow.new(size: header.size, align: align.map(&:to_sym))
      @rows = []
    end

    def generate
      table = @header.generate
      table += @align_row.generate
      table += @rows.inject('') { |result, row| result + row.generate }

      table
    end

    def <<(fields)
      @rows << MarkdownTable::Row.new(fields:)
    end
  end
end
