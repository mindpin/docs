require 'rubygems'
require 'fssm'

directory = File.join(File.dirname(__FILE__), ARGV.first)
FSSM.monitor(directory, '**/*.haml') do
  update do |base, relative|
    %x{haml index.haml index.html}
    p "compiled index.html"
  end
end