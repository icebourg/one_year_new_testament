#!/usr/bin/env ruby

require 'yaml'
require 'erb'
require 'uri'

plan = YAML.load_file('../one_year_new_testament.yaml')

renderer = ERB.new(File.read('templates/index.html.erb'))
result = renderer.result()

File.write('public/index.html', result)
