require "treehash/version"
require 'stringio'
require 'digest'

module Treehash
  MEGA_BYTE = 1024 * 1024

  def self.calculate_tree_hash(string_or_io)
    if string_or_io.is_a? String
      handle = StringIO.new(string_or_io)
    elsif string_or_io.is_a? IO
      handle = string_or_io
    else
      raise "must be called with string or IO handle"
    end

    shas = []
    while mega_byte = handle.read(MEGA_BYTE)
      shas << Digest::SHA256.new.digest(mega_byte)
    end

    while shas.size > 1
      shas = shas.each_slice(2).to_a.map do |pair|
        pair[1] ? Digest::SHA256.new.update(pair[0]).update(pair[1]).digest : pair[0]
      end
    end

    Digest.hexencode shas[0]
  end
end
