module RBToml

  @@data = ''

  def self.read_toml
    fh = File.open 'data.toml', 'r'
    fh.each_line do |line|
      @@data += line
    end
    fh.close
    @@data
  end

end
