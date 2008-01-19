# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './lib/rtranscoder/version.rb'

Hoe.new('rtranscoder', RTranscoder::VERSION) do |p|
  p.rubyforge_name = 'rtranscoder'
  p.author = 'Hal Brodigan'
  p.email = 'postmodern.mod3@gmail.com'
  p.summary = 'A Rubyful interface to various transcoding utilities using the RProgram library.'
  p.description = p.paragraphs_of('README.txt', 2..5).join("\n\n")
  p.url = p.paragraphs_of('README.txt', 0).first.split(/\n/)[1..-1]
  p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
  p.extra_deps = [['rprogram', '>=0.1.2']]
end

# vim: syntax=Ruby
