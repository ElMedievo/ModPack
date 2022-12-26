# frozen_string_literal: true

require_relative 'data'

task :version do
  contents = [
    '{',
    "\t\"version\": \"#{ModPack::VERSION}\"",
    '}'
  ]

  File.open('modpack.json', 'w+') do |f|
    contents.each { |l| f.puts(l) }
  end
end
