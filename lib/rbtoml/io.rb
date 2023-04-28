# frozen_string_literal: true

module RBToml
  # Wrapper class for reading in files of any type.
  class IO
    # The full path to the file that needs to be read.
    attr_reader :file

    # The contents of the file that RBToml::IO has read.
    attr_reader :data

    def initialize(file = 'data.toml') # :notnew:
      @file = file
      @data = ''
    end


    # Read the contents of a file and return a string.
    #
    # ==== Example
    # 
    #    io = RBToml::IO.new("file.rb")
    #    puts io.read
    def read
      File.read @file
    end
  end
end
