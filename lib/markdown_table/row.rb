# frozen_string_literal: true

module MarkdownTable
  class Row
    attr_reader :fields

    def initialize(fields:)
      @fields = fields
    end

    def generate
      "|#{@fields.join('|')}|\n"
    end
  end
end
