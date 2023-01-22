# frozen_string_literal: true

module MarkdownTable
  class Header
    attr_reader :header

    def initialize(header:)
      @header = header
    end

    def generate
      "|#{@header.join('|')}|\n"
    end
  end
end
