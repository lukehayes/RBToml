# frozen_string_literal: true

require 'test/unit'
require_relative '../lib/rbtoml/io'

class IOTest < Test::Unit::TestCase
  def test_file_exists
    assert_path_exist(@@io_obj.file)
  end

  def test_can_read_file
    assert_kind_of(String, @@io_obj.read)
  end

  class << self
    def startup
      @@io_obj = RBToml::IO.new
      puts @@io_obj
    end
  end
end
