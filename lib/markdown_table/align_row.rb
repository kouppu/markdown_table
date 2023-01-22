# frozen_string_literal: true

module MarkdownTable
  class AlignRow
    attr_reader :size, :align

    ALIGNS = {
      normal: '-',
      center: ':-:',
      left: ':-',
      right: '-:'
    }.freeze

    def initialize(size:, align: [])
      @size = size
      @align = align
    end

    def generate
      algin_row = Array.new(@size, ALIGNS[:normal])
      @align.each_with_index do |value, key|
        next if ALIGNS[value].nil?
        next if algin_row[key].nil?

        algin_row[key] = ALIGNS[value]
      end

      "|#{algin_row.join('|')}|\n"
    end
  end
end
