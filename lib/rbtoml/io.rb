# frozen_string_literal: true

module RBToml
  # Wrapper class for reading in files of any type
  class IO
    attr_reader :file, :data

    def initialize(file = 'data.toml')
      @file = file
      @data = ''
    end

    def read
      File.read @file
    end
  end

  def self.read
    io = RBToml::IO.new
    File.read io.file
  end
end
