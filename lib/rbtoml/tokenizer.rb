require 'strscan'
require 'rbtoml/token'

module RBToml
  def self.parse
    data = File.read 'data.toml'
    ss = StringScanner.new data
  end
end
