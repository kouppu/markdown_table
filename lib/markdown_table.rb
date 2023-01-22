# frozen_string_literal: true

require_relative 'markdown_table/version'
require_relative 'markdown_table/table'

module MarkdownTable
  def self.generate(header: [], align: [])
    table = MarkdownTable::Table.new(header:, align:)

    yield table

    table.generate
  end
end
